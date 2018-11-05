#!/usr/bin/python
from asm_memaccess import *
from asm_instrumentation import *

import re
import sys

AR = 0x20 - 0x4 - 0x4 # 0x4 for sfp, 0x4 for return address
BR = 0x20

# GetProceduresFromsFile - split procedures based on procedure address on
#                          .s file
#
# @data - the target data to be splited into procedures
# @return - list of procedures
#
def GetProceduresFromsFile(data):
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
    return procedures

if ( __name__ == '__main__' ):
    if (len(sys.argv) != 3):
        print 'usage --> %s [input_sfile] [output_sfile]' % (sys.argv[0])
        exit()
    input_file_name = sys.argv[1]
    output_file_name = sys.argv[2]
    with open(input_file_name, 'rb') as f:
        data = f.read()
    procedures = GetProceduresFromsFile(data)
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
            if (start_subtract_offset == 1):
                if (IsStackMemoryAccessInstruction(line)):
                    modified_line = AddOffsetofMemoryAccessInstruction(line, AR)
                    modified_lines.append((ln, modified_line))
                #for function epilogue
                if ('\tret' in line):
                    function_epilogue = ''
                    function_epilogue += '####### poison stack frame ######\\\n'
                    function_epilogue += '#\tcall poison\n'
                    function_epilogue += line + '\n'
                    function_epilogue += '#################################/\n'
                    procedures[i][j][1] = function_epilogue
                    modified_lines.append((ln, function_epilogue))
            elif ('pushl\t%ebp' in line):
                push_ebp_found = 1
            elif (push_ebp_found == 1 \
                    and len(re.findall('movl[\t|\ *]%esp, %ebp', line)) != 0):
                mov_ebp_esp_found = 1
            elif (push_ebp_found == 1 and mov_ebp_esp_found == 1):
                if (len(re.findall('sub.*\t\$.*%esp', line)) != 0):
                    start_subtract_offset = 1
                    sub_esp_ln.append(ln + 1)
                    #procedures[i][j][1] = ModifySubtractionInstruction(line,
                    #        AR + BR)
                    modified_line, orig_val \
                            = ModifySubtractionInstruction(line, AR + BR)
                    modified_lines.append((ln, modified_line))
                elif ('push' not in line):
                    push_ebp_found = 0
                    mov_ebp_esp_found = 0
            j += 1
        i += 1
    substituted_data = SubstituteLines(data, modified_lines)
    tmp_redzone = '\n'
    tmp_redzone += '############## set redzone ###############\n'
    tmp_redzone += '\tpushl %eax\n'
    tmp_redzone += '\tleal 0x20(%esp), %eax\n'
    tmp_redzone += '\tpushl $0xffffffff\n'
    tmp_redzone += '\tpushl %eax\n'
    tmp_redzone += '\tcall set_shadow2\n'
    tmp_redzone += '\taddl $0x8, %esp\n' # it can be removed
    tmp_redzone += '\tleal 4(%ebp), %eax\n'
    tmp_redzone += '\tpushl $0xffffffff\n'
    tmp_redzone += '\tpushl %eax\n'
    tmp_redzone += '\tcall set_shadow2\n'
    tmp_redzone += '\taddl $0x8, %esp\n' # it can be removed
    tmp_redzone += '\tpopl %eax\n'
    tmp_redzone += '##########################################\n'
    ###################################################################
    # note:
    # in .set_shadow2,
    # 'ret' must be patched to 'ret 8' !
    # then 'addl $0x8, %esp' can be removed
    ###################################################################
    injected_data = InjectStringtoFrontofLines(substituted_data,
                                               sub_esp_ln,
                                               tmp_redzone)
    with open(output_file_name, 'wb') as f:
        f.write(injected_data)

