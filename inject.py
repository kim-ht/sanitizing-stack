#!/usr/bin/python
from asm_instrumentation import *
from asm_memaccess import *

import sys
import re

# InjectSanitizingRoutine - inject sanitizing routines to front of memory
#                           access instructions.
#
# @data - the target content of .s file
# @return - injected result
#
def InjectSanitizingRoutine(data):
    modified_lines = []
    line_idx = 1
    max_line = len(data.split('\n'))
    lines = ['this is dummy'] + data.split('\n')
    #loop for each line
    while (line_idx <= max_line):
        #skip if current line is comment
        if ('.asc' in lines[line_idx]):
            line_idx += 1
            continue
        if ('#' in lines[line_idx]):
            line_idx += 1
            continue
        tf, rw, reg, offset = IsMemoryAccessInstruction(lines[line_idx])
        #if current line is memory access instruction (True),
        #then it adds sanitizing routine to front of the line.
        if (tf == True):
            modified_instruction = '\n'
            modified_instruction += '############### sanitize #############\\\n'
            modified_instruction += '\tpushl %eax\n'
            modified_instruction += '\tlea %s(%s), %%eax\n' % (offset,reg)
            modified_instruction += '\tpushl %eax\n'
            modified_instruction += '\tcall .bio_inst\n'
            modified_instruction += '\taddl $0x4, %esp\n' # it can be removed
            modified_instruction += '\tpopl %eax\n'
            modified_instruction += lines[line_idx] + '\n'
            modified_instruction += '################# end ################/\n'
            ###################################################################
            # note:
            # in .bio_instr,
            # 'ret' must be patched to 'ret 4' !
            # then 'addl $0x4, %esp' can be removed
            ###################################################################
            modified_lines.append([line_idx, modified_instruction])
        line_idx += 1
    substituted_data = SubstituteLines(data, modified_lines)
    return substituted_data

# InjectShadowMemoryInitRoutine - inject shadow memory initialization routine
#                                 to after main() label.
#
# @data - the target content of .s file
# @return - injected result
#
def InjectShadowMemoryInitRoutine(data):
    modified_lines = []
    line_idx = 1
    max_line = len(data.split('\n'))
    lines = ['this is dummy'] + data.split('\n')
    #loop for each line
    while (line_idx <= max_line):
        #skip if current line is comment
        if ('#' in lines[line_idx]):
            line_idx += 1
            continue
        #inject shadow memory initialization routine to after the main()
        if ('main:' in lines[line_idx]):
            modified_instruction = '\n'
            modified_instruction += '######### init shadow memory #########\\\n'
            modified_instruction += 'main:\n'
            modified_instruction += '#\tcall create_shadow\n'
            modified_instruction += '#\tall setup_shadow\n'
            modified_instruction += '################## end ################/\n'
            modified_lines.append([line_idx, modified_instruction])
            break
        line_idx += 1
    substituted_data = SubstituteLines(data, modified_lines) + '\n'
    return substituted_data

if (__name__ == '__main__'):
    if (len(sys.argv) != 3):
        print 'usage --> %s [input_sfile] [output_sfile]' % (sys.argv[0])
        exit()
    input_file_name = sys.argv[1]
    output_file_name = sys.argv[2]
    with open(input_file_name, 'rb') as f:
        data = f.read()
    injected_data = InjectSanitizingRoutine(data)
    injected_data = InjectShadowMemoryInitRoutine(injected_data)
    #print injected_data #for debug
    with open(output_file_name, 'wb') as f:
        f.write(injected_data)

