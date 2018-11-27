#!/usr/bin/python
import sys
import re

REGEX_SUB_N_ESP = 'sub.*\t\$(.*), %esp'
REGEX_MOV_EBP_ESP = '\tmovl\t%esp, %ebp'
REGEX_OFFSET = '(-?[[0x]*]?[[0-9a-fA-F]*]?)\(%.*\)'
REGEX_COMMENT = '#\ 0x[0-9a-f]*:'

TMP_FILE = 'tmp.s'
AR = 0x20 # 0x4 for sfp, 0x4 for return address
BR = 0x20

sanitizing_rountine_num = 0

#def IsNum(num):
#    try:
#        int(num, 16)
#        return True
#    except:
#        return False

def GetSetRedzoneAsm(line, size):
    W = size
    L = W - AR - BR

    instr = line + '\n'

    instr += '########################################################\n'
    instr += '##################### set redzone ######################\n'
    instr += '########################################################\n'
    #getting base address of shadow memory to edx register
    instr += '######### obtaining base address of shadow memory ######\n'
    instr += '\tpush\t%eax\n'
    instr += '\tpush\t%edx\n'
    instr += '\tpush\t%fs\n'
    instr += '\tmov\t$0x7, %eax\n'
    instr += '\tmov\t%eax, %fs\n'
    instr += '\tlea\t0xc(%esp), %edx\n'
    instr += '\tshr\t$0x3, %edx\n'
    instr += '\tlea\t%fs:(%edx), %eax\n'

    #generate redzone code for BR
    instr += '################# redzone code for BR ###################\n'
    instr += '\tmovl\t$0xffffffff, %fs:(%eax)\n'

    #generate redzone code for L and AR
    instr += '################## redzone code for L ###################\n'
    offset = 4

    #generate redzone code for L
    if (L != 0):
        for i in range(L / 32):
            instr += '\tmovl\t$0x00000000, %%fs:%#x(%%eax)\n' % (offset)
            offset += 4

    #generate redzone code for overlapped part in which L and AR reside together
        instr += '######## redzone code for L and AR overlapped part #####\n'
        L_remainder = L % 32
        if (L_remainder != 0):
            b_unit = (L_remainder) / 8
            rest = (L_remainder) % 8

            tmp = -(0xffffffff ^ ~pow(0x100, b_unit)) & 0xffffffff
            if (rest != 0):
                tmp = tmp ^ (pow(0x100, b_unit) * (0xff - rest))
            instr += '\tmovl\t$%#x, %%fs:%#x(%%eax)\n' % (tmp, offset)
            offset += 4


    #generate redzone code for rest part of AR
        instr += '############ redzone code for rest AR part #############\n'
        if (L % 32 == 0):
            instr += '\tmovl\t$0xffffffff, %%fs:%#x(%%eax)\n' % (offset)
        else:
            aligned_L = (L / 32) * 0x20 + 0x20
            rest_AR = L + AR - aligned_L
            b_unit = (rest_AR) / 8
            rest = (rest_AR) % 8
            if (b_unit == 0):
                tmp = 0x00000000
            else:
                tmp = (0xffffffff ^ pow(0x100, b_unit) * 0xfffffff) & 0xffffffff
            if (rest != 0):
                tmp = tmp ^ (pow(0x100, b_unit) * (0x8 - rest))
            instr += '\tmovl\t$%#x, %%fs:%#x(%%eax)\n' % (tmp, offset)

    #restore registers
    instr += '############### restoring registers ####################\n'
    instr += '\tpop\t%fs\n'
    instr += '\tpop\t%edx\n'
    instr += '\tpop\t%eax\n'
    instr += '########################################################\n'
    instr += '########################################################\n'
    return instr

def GetSanitizingAsm(line, offset, reg, size):
    global sanitizing_rountine_num

    instr = '\n'
    instr += '########################################################\n'
    instr += '####################### sanitize #######################\n'
    instr += '########################################################\n'
    #getting base address of shadow memory to edx register
    instr += '######## obtaining base address of shadow memory########\n'
    instr += '\tpush\t%eax\n'
    instr += '\tpush\t%edx\n'
    instr += '\tpush\t%fs\n'
    instr += '\tmov\t$0x7, %eax\n'
    instr += '\tmov\t%eax, %fs\n'

    #obtain shadow memory's byte to al register
    if ('%esp' in reg):
        instr += '\tlea\t%#x(%s), %%edx\n' % (int(offset, 16) + 4*3, reg)
    else:
        print repr(line)
        try:
            int(offset, 16)
            instr += '\tlea\t%#x(%s), %%edx\n' % (int(offset, 16), reg)
        except:
            instr += '\tlea\t%s(%s), %%edx\n' % (offset, reg)

    instr += '\tshr\t$0x3, %edx\n'
    instr += '\tmovb \t%fs:(%edx), %al\n'

    #sanitize
    instr += '###################### detecting #######################\n'
    instr += '\tcmp\t$0xff, %al\n'
    instr += '\tje\tlabel_bioasan_oob_detected_%u\n' % (sanitizing_rountine_num)
    instr += '\tcmp\t$0, %al\n'
    instr += '\tje\tlabel_bioasan_oob_not_detected_%u\n' % (sanitizing_rountine_num)
    instr += '\tcmp\t$%#x, %%al\n' % (size)
    instr += '\tjge\tlabel_bioasan_oob_not_detected_%u\n' % (sanitizing_rountine_num)
    instr += 'label_bioasan_oob_detected_%u:\n' % (sanitizing_rountine_num)
    instr += '\tmovl\t$0xdeadbeef, %eax\n'
    instr += '\tmovl\t$0xbeefdead, (%eax)\n'
    instr += 'label_bioasan_oob_not_detected_%u:\n' % (sanitizing_rountine_num)
    #restore registers
    instr += '############### restoring registers ####################\n'
    instr += '\tpop\t%fs\n'
    instr += '\tpop\t%edx\n'
    instr += '\tpop\t%eax\n'
    instr += '########################################################\n'
    instr += line + '########## this is target mem access instruction\n'
    instr += '########################################################\n'

    sanitizing_rountine_num += 1

    return instr

def GetPoisoningAsm(line, size):
    #currently, i'm just do uset redzone

    instr = '\n'
    #obtain shadow memory address to eax register
    instr += '########################################################\n'
    instr += '#################### unset redzone #####################\n'
    instr += '########################################################\n'
    instr += '########### obtaining address of shadow memory #########\n'
    instr += '\tpush\t%eax\n'
    instr += '\tpush\t%edx\n'
    instr += '\tpush\t%fs\n'
    instr += '\tmov\t$0x7, %eax\n'
    instr += '\tmov\t%eax, %fs\n'
    instr += '\tlea\t0xc(%esp), %edx\n'
    instr += '\tshr\t$0x3, %edx\n'
    instr += '\tlea\t%fs:(%edx), %eax\n'

    #unser redzone
    offset = 0
    W = size
    instr += '#################### unset redzone #####################\n'
    for i in range((W + 0x19) / 0x20):
        instr += '\tmovl\t$0x00000000, %%fs:%#x(%%eax)\n' % (offset)
        offset += 4
    return instr

def GetInitShadowMemAsm(line):
    init_shadow_mem_asm = '\n'
    init_shadow_mem_asm += '############ init shadow memory ###########\n'
    init_shadow_mem_asm += 'main:\n'
    init_shadow_mem_asm += '\tcall create_shadow\n'
    init_shadow_mem_asm += '\tcall setup_shadow\n'
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
        return (True, read_or_write, register, offset, 0)
    tmp = re.findall('-?[[0x]*]?[[0-9a-fA-F]*]?\(%.*\)', instr)
    if (len(tmp)):
        if ('), ' in instr):
            read_or_write = 'r'
        else:
            read_or_write = 'w'
        register = re.findall('-?[[0x]*]?[[0-9a-fA-F]*]?\((%.*)\)', instr)[0]
        offset = re.findall('(-?[[0x]*]?[[0-9a-fA-F]*]?)\(%.*\)', instr)[0]
        #determine size
        suffix = instr.split('\t')[1][-1]
        if (suffix == 'l'):
            size = 4
        elif (suffix == 'w'):
            size = 2
        elif (suffix == 's'):
            size = 2
        elif (suffix == 'b'):
            size = 1
        else:
            size = 4 
        return (True, read_or_write, register, offset, size)
    else:
        return (False, 'dummy', 'dummy', 0, 0)

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
    insert_sanitizing = False
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
        insert_sanitizing = True
        modify_stack_memaccess = True
        #insert_poisoning = True
    #print start, end, insert_redzone
    i = start
    while (i <= end):

        #skip .asciz line
        if ('\t.asciz ' in lines[i]):
            i += 1
            continue

        ##################################
        #add shadow memory init
        ##################################
        if (IsRegexMatched('^main:$', lines[i]) == True):
            lines[i] = GetInitShadowMemAsm(lines[i])

        ##################################
        #modify "subl $L, %esp" to "sub $W, %esp"
        ##################################
        if (modify_sub_n_esp == True):
            regex_result = re.findall(REGEX_SUB_N_ESP, lines[i])
            if (len(regex_result) > 0):
                L = regex_result[0]
                W = int(L, 16) + AR + BR
         #       print 'orig -> ', i, lines[i]
                lines[i] = lines[i].replace('$' + L, '$' + hex(W))
          #      print 'modi -> ', i, lines[i]
                modify_sub_n_esp = False

        ##################################
        #modify stack memory access instruction
        #ex0) "movl -0x20(%ebp), %eax" -> "movl -0x20-AR+0x8(%ebp), %eax"
        #ex1) "movl 0x20(%esp), %ebx" -> "movl 0x20+BR(%esp), %ebx"
        #ex2) do not modify "movl 0x8(%ebp), %eax" because it is argument access
        ##################################
        if (modify_stack_memaccess == True and i > ln_stack_frame_constructed):
            tf, rw, reg, offset, size = IsMemoryAccessInstruction(lines[i])
            if (tf == True and rw != 'rw'):
                #modify ebp access offset
                if ('%ebp' in reg and int(offset, 16) < push_num * 4 * -1):
                    orig_off = re.findall(REGEX_OFFSET, lines[i])[0]
                    new_off = hex(int(orig_off, 16) - AR)
              #      print 'orig -> ', lines[i]
                    lines[i] = lines[i].replace(orig_off + '(', new_off + '(')
              #      print 'modi -> ', lines[i]
                #modify esp access
                if ('%esp' in reg and int(offset, 16) > 0):
                    orig_off = re.findall(REGEX_OFFSET, lines[i])[0]
                    new_off = hex(int(orig_off, 16) + BR + AR)
                    #print 'orig -> ', lines[i]
                    lines[i] = lines[i].replace(orig_off + '(', new_off + '(')
                    #print 'modi -> ', lines[i]

        ##################################
        #insert redzone
        ##################################
        if (insert_redzone == True):
            sub_n_esp_regex = 'sub.*\t\$(.*), %esp'
            regex_result = re.findall(sub_n_esp_regex, lines[i])
            if (len(regex_result) > 0):
                modified_line = GetSetRedzoneAsm(lines[i], W)
                #print 'orig -> ', lines[i]
                lines[i] = modified_line
                insert_redzone = False
                #print 'modi -> ', lines[i]

        ##################################
        #insert sanitizing routine
        ##################################
        if (insert_sanitizing == True and i > ln_stack_frame_constructed):
            #print 'asdasd'
            tf, rw, reg, offset, size = IsMemoryAccessInstruction(lines[i])
            if (tf == True and rw != 'rw'):
                #print tf, rw, repr(reg), repr(offset)
                modified_line = GetSanitizingAsm(lines[i], offset, reg, size)
                #print 'orig -> ', lines[i]
                lines[i] = modified_line
                #print 'modi -> ', lines[i]
        i += 1

        ##################################
        #insert poisoning routine at function epilogue
        ##################################
        if ('\tleave\t' in lines[i]):
            modified_line = GetPoisoningAsm(lines[i], W)

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
    RemoveInstructionComments(if_name, TMP_FILE)
    procs_range = GetProceduresRange(if_name)
    RemoveProcedureComments(TMP_FILE, TMP_FILE)
    procs_range = GetProceduresRange(TMP_FILE)
    lines = GetLinesFromFile(TMP_FILE)
    # iterate each procedure
    #print procs_range
    #print procs_range[267]
    for start, end in procs_range:
        #instrumentation is in IterateInnerProcedure()
        IterateInnerProcedure(lines, start, end)
    SaveFile(of_name, MergeLines(lines))

