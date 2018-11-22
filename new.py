#!/usr/bin/python
import sys
import re

AR = 0x20 - 0x4 - 0x4 # 0x4 for sfp, 0x4 for return address
BR = 0x20

push_ebp_found = False
mov_ebp_esp_found = False
start_subtract_offset = False

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
    print procs
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

def UpdateStates(line):
    global found_push_ebp
    global is_constructing_stack_frame
    global modify_sub_esp
    global modify_mem_access

    if (is_constructing_stack_frame == True):
        found_push_ebp = IsPushEbp(line)
        if (found_push_ebp == False):
            is_constructing_stack_frame = False

def ClearStates():
    global push_ebp_found
    global mov_ebp_esp_found
    global start_subtract_offset

    push_ebp_found = False
    mov_ebp_esp_found = False
    start_subtract_offset = False

def IterateInnerProcedure(lines, start, end):
    ClearStates()
    i = start
    while (i <= end):
        line = lines[i]
        if ('pushl\t%ebp' in line):
            push_ebp_found = True
        if ():
        i += 1

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

if (__name__ == '__main__'):
    if_name, of_name = ParseArgvs()
    procs_range = GetProceduresRange(if_name)
    lines = GetLinesFromFile(if_name)
    # iterate procedures
    for start, end in procs_range:
        IterateInnerProcedure(lines, start, end)
    SaveFile(of_name, MergeLines(lines))

