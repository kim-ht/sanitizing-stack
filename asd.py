#!/usr/bin/python
import re

# InsertStringtoFrontofLines - insert string to front of each given lines
#
# @file_name - the target file's name
# @lines_idx - a list which which contains line numbers
# @string - the string to be inserted
# @return - the instrumented result
#
def InsertStringtoFrontofLines(file_name, lines_idx, string):
    with open(file_name, 'rb') as f:
        data = f.read()
    lines = data.split('\n')
    max_line = len(data.split('\n'))
    sliced_data = []
    start_line_idx = 0
    for i in lines_idx:
        current_end_line_idx = i - 1
        sliced_data.append('\n'.join(lines[start_line_idx:current_end_line_idx]))
        start_line_idx = current_end_line_idx
    start_line_idx = current_end_line_idx
    current_end_line_idx = max_line - 1
    sliced_data.append('\n'.join(lines[start_line_idx:current_end_line_idx]))
    if (0 in lines_idx):
        instrumented = string
    else:
        instrumented = ''
    for part in sliced_data[:-1]:
        instrumented += part + string
    instrumented += sliced_data[-1]
    return instrumented

# IsMemoryAccessInstruction - determine if the given instruction is memory
#                             access instruction
#
# @instr - the instruction to be checked
# @return - (True, whether read/write, register to be accessed, offset to be
#           accessed) on memory access instruction; (False, dummy, dummy,
#           dummy) on none memory access instruction
#
def IsMemoryAccessInstruction(instr):
    tmp = re.findall('-?[[0x]*]?[[0-9a-fA-F]*]?\(%.*\)', instr)
    if (len(tmp)):
        if ('), ' in instr):
            read_or_write = 'r'
        else:
            read_or_write = 'w'
        register = re.findall('-?[[0x]*]?[[0-9a-fA-F]*]?\((%.*)\)', instr)[0]
        offset = int(re.findall('(-?[[0x]*]?[[0-9a-fA-F]*]?)\(%.*\)', instr)[0],
                     16)
        #print read_or_write, register, offset, instr
        #print '-->' + AddOffsetofMemoryAccessInstruction(instr, -0x1234)
        return (True, read_or_write, register, offset)
    else:
        return (False, 'dummy', 'dummy', 0)

# IsStackMemoryAccessInstruction - determine if the given instruction is stack
#                                  memory access instruction
#
# @instr - the instruction to be checked
# @return - True on stack memory access instruction; False on non stack memory
#           access instruction
#
def IsStackMemoryAccessInstruction(instr):
    tf, rw, reg, offset = IsMemoryAccessInstruction(instr)
    if (len(re.findall('e[b,s]p', reg))):
        return True
    else:
        return False

# AddOffsetofMemoryAccessInstruction - add given offset to offset of given
#                                      memory access instruction
#
# @instr - memory access instruction (must be memory access instruction)
# @offset_to_add - the offset to be added
# @return - the modified instruction that offset is added
#
def AddOffsetofMemoryAccessInstruction(instr, offset_to_add):
    offset = re.findall('(-?[[0x]*]?[[0-9a-fA-F]*]?)\(%.*\)', instr)[0]
    modified_offset = hex(int(offset, 16) + offset_to_add)
    modified_instr = instr.replace(offset + '(', modified_offset + '(')
    return modified_instr

# ModifySubtractionInstruction - add value to more to subtract/add more value
#                                to esp
#
# @instr - instruction like "sub $N, %esp"
# @value - the value to be added, value will be added to N
# @reutrn - the modified instruction that value is added
#
def ModifySubtractionInstruction(instr, value):
    original_value = re.findall('sub.*\t\$(.*), %esp', instr)[0]
    modified_value = hex(int(original_value, 16) + value)
    modified_instr = instr.replace('$' + original_value, '$' + modified_value)
    return modified_instr

# SubstituteLines - substitute to the given lines
#
# @file_name - the target file's name
# @modified_lines - the lines tha substituted which has followed form [line
#                   number, instruction]
#
def SubstituteLines(file_name, modified_lines):
    with open(file_name, 'rb') as f:
        data = f.read()
    line_idx = 1
    previous_idx = 0
    new_data = ''
    for ln, instr in modified_lines:
        new_data += '\n'.join(data.split('\n')[previous_idx:ln - 1])
        new_data += '\n' + instr + '\n'
        #print '###' +instr
        previous_idx = ln
    new_data += '\n'.join(data.split('\n')[ln:])
    #print new_data
    with open('stack_32_modified.s', 'wb') as f:
        f.write(new_data)

if ( __name__ == '__main__' ):
    with open('./stack_32.s', 'rb') as f:
        data = f.read()
    procedures = []
    procedure = []
    line_num = 0
    for line in data.split('\n'):
        line_num += 1
        if (len(re.findall('^\t+\.', line)) != 0):
            continue
        if(len(re.findall('^.+:\n', line)) != 0):
            continue
        if (len(re.findall('^[0-9a-zA-Z\._]*:', line)) != 0):
            continue
        if (line == ''):
            continue
        if (len(re.findall('^\t#', line)) != 0):
            if (len(re.findall('^\t#Procedure [0x0-9a-fA-F]+', line)) != 0):
                procedures.append(procedure)
                procedure = []
        else:
            procedure.append([line_num, line])
    procedures.append(procedure)
    procedures = procedures[1:]
    sub_esp_ln = []
    modified_lines = []
    i = 0
    while (i < len(procedures)):
        push_ebp_found = 0
        mov_ebp_esp_found = 0
        start_subtract_offset = 0
        j = 0
        while (j < len(procedures[i])):
            ln = procedures[i][j][0]
            line = procedures[i][j][1]
            if (start_subtract_offset == 1 and IsMemoryAccessInstruction(line)):
                if (IsStackMemoryAccessInstruction(line)):
                    procedures[i][j][1] = \
                            AddOffsetofMemoryAccessInstruction(line, 0x1000)
                    modified_lines.append((procedures[i][j][0], \
                            AddOffsetofMemoryAccessInstruction(line, 0x1000)))
                    #procedures[i][j][1] = procedures[i][j][1] +
                    #       '\t\t################### should be changed (offset)'
            elif ('pushl\t%ebp' in line):
                push_ebp_found = 1
            elif (push_ebp_found == 1 and
                    len(re.findall('movl[\t|\ *]%esp, %ebp', line)) != 0):
                mov_ebp_esp_found = 1
            elif (push_ebp_found == 1 and mov_ebp_esp_found == 1):
                if (len(re.findall('sub.*\t\$.*%esp', line)) != 0):
                    start_subtract_offset = 1
                    sub_esp_ln.append(procedures[i][j][0] + 1)
                    procedures[i][j][1] = ModifySubtractionInstruction(line,
                            0x1000)
                    modified_lines.append((procedures[i][j][0],
                            ModifySubtractionInstruction(line, 0x1000)))
                    #procedures[i][j][1] = procedures[i][j][1] +
                    #'\t\t################### should be changed (size)'
                elif ('push' not in line):
                    push_ebp_found = 0
                    mov_ebp_esp_found = 0
            j += 1
        i += 1

    #for proc in procedures:
    #    print 'proc@@@@@@@@@@@@@@@@'
    #    for ln, line in proc:
    #        print ln, line
    #print sub_esp_ln
    #print modified_lines
    file_name = 'stack_32.s'
    SubstituteLines(file_name, modified_lines)
    tmp_redzone = """
            ####################################################################
            ################ redzone will be costructed at here ################
            ####################################################################
    """
    InsertStringtoFrontofLines('stack_32_modified.s', sub_esp_ln, tmp_redzone)

