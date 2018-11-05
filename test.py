#!/usr/bin/python
import sys
import os

TMP_FILE_NAME = 'tmp.s'

if (__name__ == '__main__'):
    if (len(sys.argv) != 3):
        print 'usage --> %s [input_sfile] [output_sfile]' % (sys.argv[0])
        exit()
    input_file_name = sys.argv[1]
    output_file_name = sys.argv[2]
    os.system('python ./inject.py %s %s' \
            % (input_file_name, TMP_FILE_NAME))
    os.system('python ./inject_stack.py %s %s' \
            % (TMP_FILE_NAME, output_file_name))
    os.system('rm ./%s' % (TMP_FILE_NAME))
    os.system('gcc -m32 %s bio_inst32.s shadow_mem32.s -o a.out' % (output_file_name,))

