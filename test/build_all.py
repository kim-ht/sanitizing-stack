#!/usr/bin/python
import os

if (__name__ == '__main__'):
    for i in range(412):
        os.system('gcc -m32 %s -o %s' % (str(i) + '_zxc.s', str(i) + 'zxc'))
