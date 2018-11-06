#asm_memaccess.py
import re

# IsMemoryAccessInstruction - determine if the given instruction is memory
#                             access instruction
#
# @instr - the instruction line to be checked
# @return - if memory access instruction, it returns below list:
#               (
#                 True,
#                 whether read/write in which it can be 'r' or 'w' or 'rw',
#                 register used for memory access,
#                 offset value used in memory access,
#                 size to be accessed
#               )
#           if non-memory access instruction, it returns below list:
#               (
#                 False,
#                 dummy string,
#                 dummy string,
#                 0, 
#                 0
#               )
#
def IsMemoryAccessInstruction(instr):
    #print instr
    if ('rep' in instr):
        return (False, 'dummy', 'dummy', 0, 0)
    tmp = re.findall('-?[[0x]*]?[[0-9a-fA-F]*]?\(%.*\)', instr)
    if (len(tmp)):
        #determine read/write
        if ('), ' in instr):
            read_or_write = 'r'
        else:
            read_or_write = 'w'
        #determine register
        register = re.findall('-?[[0x]*]?[[0-9a-fA-F]*]?\((%.*)\)', instr)[0]
        #determine the register is esp
        if ('esp' in register):
            return (False, 'dummy', 'dummy', 0, 0)
        #determine offset
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

# IsStackMemoryAccessInstruction - determine if the given instruction is stack
#                                  memory access instruction
#
# @instr - the instruction to be checked
# @return - True on stack memory access instruction;
#           False on non-stack memory access instruction
#           access instruction
#
def IsStackMemoryAccessInstruction(instr):
    tf, rw, reg, offset = IsMemoryAccessInstruction(instr)
    if (len(re.findall('ebp', reg)) and offset < 8):
        return True
    else:
        return False

# AddOffsetofMemoryAccessInstruction - add given offset to offset of given
#                                      memory access instruction
#
# example0)
# AddOffsetofMemoryAccessInstruction('movl eax, -4(%ebp)', -0x100)
#     returns 'movl eax, -0x104(%ebp)'
#
# example1)
# AddOffsetofMemoryAccessInstruction('movl eax, -4(%ebp)', 0x100)
#     returns 'movl eax, 0xfc(%ebp)'
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

# ModifySubtractionInstruction - add value to sbtract/add more value to esp
#
# example0)
# AddOffsetofMemoryAccessInstruction('sub $0x40, %esp', 0x100)
#     returns 'sub $0x140, %esp'
#
# @instr - instruction like "sub $N, %esp"
# @value - the value to be added, value will be added to N
# @reutrn - (
#             the modified instruction that value is added,
#             the original value
#           )
#
def ModifySubtractionInstruction(instr, value):
    original_value = re.findall('sub.*\t\$(.*), %esp', instr)[0]
    modified_value = hex(int(original_value, 16) + value)
    modified_instr = instr.replace('$' + original_value, '$' + modified_value)
    return modified_instr, original_value

