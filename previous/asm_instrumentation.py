#asm_instrumentation.py

# InjectStringtoFrontofLines - inject string to front of each given lines
#
# @data - the target data
# @lines_idx - a list of line numbers
# @string - the string to be injected to front of the given lines
# @return - the injected data result
#
def InjectStringtoFrontofLines(data, lines_idx, string):
    lines = data.split('\n')
    number_of_line = len(data.split('\n'))
    sliced_data = []
    start_line_idx = 0
    for i in lines_idx:
        current_end_line_idx = i - 1
        sliced_data.append('\n'.join(lines[start_line_idx:current_end_line_idx \
                ]))
        start_line_idx = current_end_line_idx
    start_line_idx = current_end_line_idx
    current_end_line_idx = number_of_line - 1
    sliced_data.append('\n'.join(lines[start_line_idx:current_end_line_idx]))
    if (0 in lines_idx):
        injected = string
    else:
        injected = ''
    for part in sliced_data[:-1]:
        injected += part + string
    injected += sliced_data[-1]
    return injected

# InsertStringtoFrontofLinesinFile - inject string to front of each given lines
#                                    which are in given file.
#
# @file_name - the target file's name
# @lines_idx - a list of line numbers
# @string - the string to be injected to front of the given lines
# @output_file_name - the file name to save the injected result
#
def InjectStringtoFrontofLinesinFile(file_name,
                                     lines_idx,
                                     string,
                                     output_file_name):
    with open(file_name, 'rb') as f:
        data = f.read()
    injected_data = InjectStringtoFrontofLines(data, lines_idx, string)
    with open(output_file_name, 'wb') as f:
        f.write(injected_data)

# SubstituteLines - substitute line in data to the given lines
#
# @data - the target data to be modified by given lines list
# @modified_lines - the lines that substituted as has followed form:
#                   [
#                     [line number0, instruction0],
#                     [line number1, instruction1],
#                     ...
#                     [line numbern, instructionn]
#                   ]
#                   the given line number's content will be modifed to the
#                   given instruction
# @return - the substituted result
#
def SubstituteLines(data, modified_lines):
    line_idx = 1
    previous_idx = 0
    substituted_data = ''
    for ln, instr in modified_lines:
        substituted_data += '\n'.join(data.split('\n')[previous_idx:ln - 1])
        substituted_data += '\n' + instr + '\n'
        previous_idx = ln
    substituted_data += '\n'.join(data.split('\n')[ln:])
    return substituted_data + '\n\n'

# SubstituteLinesinFile - substitute line in file to the given lines
#
# @file_name - the target file to be modified by given lines list
# @modified_lines - the lines that substituted as has followed form:
#                   [
#                     [line number0, instruction0],
#                     [line number1, instruction1],
#                     ...
#                     [line numbern, instructionn]
#                   ]
#                   the given line number's content will be modifed to the
#                   given instruction
# @return - the substituted result
#
def SubstituteLinesinFile(file_name, modified_lines):
    with open(file_name, 'rb') as f:
        data = f.read()
    substituted_data = SubstituteLines(data, modified_lines)
    return substituted_data

