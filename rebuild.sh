#!/bin/bash
zip -r m2ktest.lib *.* Textures Levels Sounds spec moonshine lib
exec python3 <<END_OF_PYTHON
import sys
file=open('build.ini','r');
a=file.read();
a=int(a);
a=a+int(1);
file.close();
file=open('build.ini','w');
a=str(a);
file.write(a);
file.close();
sys.exit (0);

