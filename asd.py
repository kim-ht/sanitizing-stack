#!/usr/bin/python
from asm_memaccess import *
from asm_instrumentation import *

import re
import sys

TMP_S = 'tmp.s'

if ( __name__ == '__main__' ):
    file_name = sys.argv[1]
    with open(file_name, 'rb') as f:
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
                            AddOffsetofMemoryAccessInstruction(line, 0x1000) + \
                            '\t\t####### offset is modified #######'))
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
                            ModifySubtractionInstruction(line, 0x1000) + \
                            '\t\t####### size is modified #######'))
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
    with open()
    print SubstituteLines(file_name, modified_lines)
    tmp_redzone = """
            ####################################################################
            ################       it will be instrumented      ################
            ################ redzone will be costructed at here ################
            ####################################################################
    """
    #with open(TMP_S, 'rb') as f:
    #    data = f.read()
    #print InjectStringtoFrontofLines(data, sub_esp_ln, tmp_redzone)

