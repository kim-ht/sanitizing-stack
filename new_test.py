#!/usr/bin/python
import sys
import re

REGEX_SUB_N_ESP = 'sub.*\t\$(.*), %esp'
REGEX_MOV_EBP_ESP = 'movl[\t|\ *]%esp, %ebp'
REGEX_OFFSET = '(-?[[0x]*]?[[0-9a-fA-F]*]?)\(%.*\)'
REGEX_COMMENT = '#\ 0x[0-9a-f]*:'

TMP_FILE = 'tmp.s'
AR = 0x20 # 0x4 for sfp, 0x4 for return address
BR = 0x20

def GetSetRedzoneAsm(line):
    set_redzone_asm = ''
    set_redzone_asm += line + '\n'
    set_redzone_asm += '############## set redzone ###############\n'
    set_redzone_asm += '#\tpushl %eax\n'
    set_redzone_asm += '#\tleal 0x20(%esp), %eax\n'
    set_redzone_asm += '#\tpushl $0xffffffff\n'
    set_redzone_asm += '#\tpushl %eax\n'
    set_redzone_asm += '#\tcall set_shadow2\n'
    set_redzone_asm += '#\taddl $0x8, %esp\n' # it can be removed
    set_redzone_asm += '#\tleal 4(%ebp), %eax\n'
    set_redzone_asm += '#\tpushl $0xffffffff\n'
    set_redzone_asm += '#\taddl $0x8, %esp\n' # it can be removed
    set_redzone_asm += '#\tpopl %eax\n'
    set_redzone_asm += '##########################################\n'
    return set_redzone_asm

def GetSanitizingAsm(line, offset, reg):
    sanitizing_asm = '\n'
    sanitizing_asm  += '################## sanitize ###############\n'
    sanitizing_asm  += '#\tpushl %eax\n'
    sanitizing_asm  += '#\tlea %s(%s), %%eax\n' % (offset,reg)
    sanitizing_asm  += '#\tpushl %eax\n'
    sanitizing_asm  += '#\tcall .bio_inst\n'
    sanitizing_asm  += '#\taddl $0x4, %esp\n' # it can be removed
    sanitizing_asm  += '#\tpopl %eax\n'
    sanitizing_asm  += '###########################################\n'
    sanitizing_asm  += line + '\n'
    return sanitizing_asm

def GetPoisoningAsm(line, size):
    poisoning_asm = '\n'
    poisoning_asm += '####### poison stack frame ######\\\n'
    poisoning_asm += '#'
    poisoning_asm += '#\tcall bio_asan_poison\n'
    poisoning_asm += '#################################/\n'
    poisoning_asm += line + '\n'
    return poisoning_asm

def GetInitShadowMemAsm(line):
    init_shadow_mem_asm = '\n'
    init_shadow_mem_asm += '############ init shadow memory ###########\n'
    init_shadow_mem_asm += 'main:\n'
    init_shadow_mem_asm += '#\tcall create_shadow\n'
    init_shadow_mem_asm += '#\tall setup_shadow\n'
    init_shadow_mem_asm += '###########################################\n'
    return init_shadow_mem_asm

# IsMemoryAccessInstruction - determine if the given instruction is memory
#                             access instruction
#
# @instr - the instruction line to be checked
# @return - if memory access instruction, it returns below list:
#               (
#                 True,
#                 whether read/write in which it can be 'r' or 'w' or 'rw',
#                 register used for memory access,
#                 offset value used in memory access
#               )
#           if non-memory access instruction, it returns below list:
#               (
#                 False,
#                 dummy string,
#                 dummy string,
#                 0
#               )
#
def IsMemoryAccessInstruction(instr):
    tmp = re.findall('\((%.*)\).*\((%.*)\)', instr)
    if (len(tmp)):
        register = tmp[0][1]
        if ('esp' in tmp[0][0] or 'esp' in tmp[0][1]):
            register = '%esp'
        elif ('ebp' in tmp[0][0] or 'ebp' in tmp[0][1]):
            register = '%ebp'
        read_or_write = 'rw'
        offset = re.findall('\(%.*\).*(%.*)\(%.*\)', instr)
        if (len(offset)):
            offset = offset[0]
        else:
            offset = 0
        return (True, read_or_write, register, offset)
    tmp = re.findall('-?[[0x]*]?[[0-9a-fA-F]*]?\(%.*\)', instr)
    if (len(tmp)):
        if ('), ' in instr):
            read_or_write = 'r'
        else:
            read_or_write = 'w'
        register = re.findall('-?[[0x]*]?[[0-9a-fA-F]*]?\((%.*)\)', instr)[0]
        offset = re.findall('(-?[[0x]*]?[[0-9a-fA-F]*]?)\(%.*\)', instr)[0]
        return (True, read_or_write, register, offset)
    else:
        return (False, 'dummy', 'dummy', 0)

def GetLastLine(if_name):
    with open(if_name) as f:
        data = f.read()
        return len(data.split('\n')) - 1

# GetProcedures - split procedures based on procedure address on .s file data
#
# @data - the target data to be splited into procedures
# @return - list of procedures
#
def GetProcedures(if_name):
    look_up_regex = '^\t#Procedure [0x0-9a-fA-F]+'
    procs = []
    with open(if_name) as f:
        for line_n, line in enumerate(f, 0):
            if (len(re.findall(look_up_regex, line)) != 0):
                proc_start = line_n
                procs.append(proc_start)
    #print procs
    return procs

def GetProceduresRange(if_name):
    procs = GetProcedures(if_name)
    i = 0
    procs_range = []
    while (i < len(procs) - 1):
        start = procs[i]
        end = procs[i + 1] - 1
        procs_range.append((start, end))
        i += 1
    procs_range.append((procs[i], GetLastLine(if_name) - 1))
    return procs_range

def ParseArgvs():
    if (len(sys.argv) != 3):
        print 'usage --> %s [input_sfile] [output_sfile]' % (sys.argv[0])
        exit()
    return (sys.argv[1], sys.argv[2])

def GetLinesFromFile(f_name):
    with open(f_name, 'rb') as f:
        f_data = f.read()
    lines = f_data.split('\n')
    return lines

def IterateInnerProcedure(lines, start, end):
    init_shadow_mem = False
    insert_redzone = False
    modify_stack_memaccess = False
    modify_sub_n_esp = False
    insert_sanitizing = True
    insert_poisoning = False
    ln_stack_frame_constructed = 0
    W = 0
    L = 0

    tf, ln_stack_frame_constructed, push_num = IsStackFrameConstructed(lines,
                                                                       start,
                                                                       end)
    #if ('quotearg_buffer_restyled' in lines[start:end]):
    #    tf == False
    if (tf == True):
        insert_redzone = True
        modify_sub_n_esp = True
        modify_stack_memaccess = True
        #insert_poisoning = True
    #print start, end, insert_redzone
    i = start
    while (i <= end):

        #modify "subl $L, %esp" to "sub $W, %esp"
        if (modify_sub_n_esp == True):
            regex_result = re.findall(REGEX_SUB_N_ESP, lines[i])
            if (len(regex_result) > 0):
                L = regex_result[0]
                W = int(L, 16) + AR + BR
         #       print 'orig -> ', i, lines[i]
                lines[i] = lines[i].replace('$' + L, '$' + hex(W))
          #      print 'modi -> ', i, lines[i]
                modify_sub_n_esp = False

        #modify stack memory access instruction
        #ex0) "movl -0x20(%ebp), %eax" -> "movl -0x20-AR+0x8(%ebp), %eax"
        #ex1) "movl 0x20(%esp), %ebx" -> "movl 0x20+BR(%esp), %ebx"
        #ex2) do not modify "movl 0x8(%ebp), %eax" because it is argument access
        if (modify_stack_memaccess == True and i > ln_stack_frame_constructed):
            tf, rw, reg, offset = IsMemoryAccessInstruction(lines[i])
            if (tf == True and rw != 'rw'):
                #modify ebp access offset
                if ('%ebp' in reg and int(offset, 16) < push_num * 4 * -1):
                    orig_off = re.findall(REGEX_OFFSET, lines[i])[0]
                    new_off = hex(int(orig_off, 16) - AR)
              #      print 'orig -> ', lines[i]
                    lines[i] = lines[i].replace(orig_off + '(', new_off + '(')
              #      print 'modi -> ', lines[i]
#                #modify esp access
#                if ('%esp' in reg and int(offset, 16) > 0):
#                    orig_off = re.findall(REGEX_OFFSET, lines[i])[0]
#                    new_off = hex(int(orig_off, 16) + BR + AR)
#                    #print 'orig -> ', lines[i]
#                    lines[i] = lines[i].replace(orig_off + '(', new_off + '(')
#                    #print 'modi -> ', lines[i]

#        #insert redzone
#        if (insert_redzone == True):
#            sub_n_esp_regex = 'sub.*\t\$(.*), %esp'
#            regex_result = re.findall(sub_n_esp_regex, lines[i])
#            if (len(regex_result) > 0):
#                modified_line = GetSetRedzoneAsm(lines[i])
#                #print 'orig -> ', lines[i]
#                lines[i] = modified_line
#                #print 'modi -> ', lines[i]

        #insert sanitizing routine
#        elif (insert_sanitizing == True and i > ln_stack_frame_constructed):
#            tf, rw, reg, offset = IsMemoryAccessInstruction(lines[i])
#            if (tf == True and rw != 'rw'):
#                if ('%esp' in reg):
#                    modified_line = GetSanitizingAsm(lines[i], offset, reg)
#                    #print 'orig -> ', lines[i]
#                    lines[i] = modified_line
#                    #print 'modi -> ', lines[i]
        i += 1

#        #insert poisoning routine at function epilogue
#        if ('\tretl\t' in lines[i]):
#            modified_line = GetPoisoningAsm(lines[i], W)

def IterateInnerProcedure2(lines, start, end):
    i = start
    while (i <= end):
        if (IsRegexMatched('^sub_[0-9a-f]*:', lines[i])):
            lines[start] = '' #lines[start] is procedure comment
            break
        i += 1

def IsStackFrameConstructed(lines, start, end):
    # if 'leave' doesn't exist
    if ('\tleave\t' not in lines[start:end]):
        return (False, 0, 0)
    mov_esp_ebp_found = False
    push_num = 0
    i = start
    while (i <= end):
        line = lines[i]
        #mov ebp, esp; pushl %reg; subl $n, %esp
        if (mov_esp_ebp_found == True):
            if ('pushl\t%' in line):
                push_num += 1
            elif (IsRegexMatched(REGEX_SUB_N_ESP, line)):
                return (True, i, push_num)
            else:
                return (False, 0, 0)
        #movl %ebp, %esp
        if (mov_esp_ebp_found == False
                and IsRegexMatched(REGEX_MOV_EBP_ESP, line) == True):
            mov_esp_ebp_found = True
        i += 1
    return (False, 0, 0)

def IsRegexMatched(regex, data):
    regex_result = re.findall(regex, data)
    if (len(regex_result) > 0):
        return True
    return False
def MergeLines(lines):
    merged = '\n'.join(lines)
    return merged

def SaveFile(f_name, data):
    with open(f_name, 'wb') as f:
        f.write(data)

def IsPushEbp(lines):
    if ('pushl\t%ebp' in line):
        return True;
    else:
        return False;
def RemoveProcedureComments(if_name, of_name):
    procs_range = GetProceduresRange(TMP_FILE)
    lines = GetLinesFromFile(TMP_FILE)
    # iterate each procedure
    for start, end in procs_range:
        IterateInnerProcedure2(lines, start, end)
    SaveFile(TMP_FILE, MergeLines(lines))

def RemoveInstructionComments(if_name, of_name):
    with open(if_name, 'rb') as f:
        data = f.read()
    removed = []
    for l in data.split('\n'):
        regex_result = re.findall(REGEX_COMMENT, l)
        if (len(regex_result) == 0):
            removed.append(l)
    SaveFile(of_name, '\n'.join(removed))

if (__name__ == '__main__'):
    if_name, of_name = ParseArgvs()
    for i in range(412):
        RemoveInstructionComments(if_name, TMP_FILE)
        procs_range = GetProceduresRange(if_name)
        print procs_range
        RemoveProcedureComments(TMP_FILE, TMP_FILE)
        procs_range = GetProceduresRange(TMP_FILE)
        print procs_range
        lines = GetLinesFromFile(TMP_FILE)
        start, end = procs_range[i]
        #instrumentation is in IterateInnerProcedure()
        IterateInnerProcedure(lines, start, end)
        SaveFile('test/' + str(i) + '_' + of_name, MergeLines(lines))

