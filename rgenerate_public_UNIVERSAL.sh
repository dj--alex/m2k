#!/bin/bash
bver=$(cat build.ini) #&& echo $bver
nazwa=$(cat nazwa.ini) #&& echo $nazwa
cd ..
cp ${nazwa}/m2ktest.lib ${nazwa}-Linux/usr/bin 
cp ${nazwa}/m2ktest.lib ${nazwa}-Windows/${nazwa}-src
cp ${nazwa}/m2ktest.lib ${nazwa}-Android/game.love
namelinux="${nazwa}-Linux-$bver.tar.gz"
namewindows="${nazwa}-Windows-$bver.tar.gz"
nameandroid="${nazwa}-Android-$bver.tar.gz" #final application love2d lua name
rm "${namelinux}"
tar -czf "${namelinux}" ${nazwa}-Linux
cd ${nazwa}-Windows
cd ${nazwa}-src
sh compile.sh
cd ..
cd ..
cp ${nazwa}-Windows/${nazwa}-src/${nazwa}-Win64.exe ${nazwa}-Windows/${nazwa}-Win/${nazwa}-Win64.exe
cd ${nazwa}-Windows
rm "${namewindows}"
tar -czf "${namewindows}" ${nazwa}-Win
cd ..
mv "${namelinux}" NEW/"${namelinux}"
mv ${nazwa}-Windows/"${namewindows}" NEW/"${namewindows}"
#cd ${nazwa}-Android
#sh make-apk.sh
#cd ..
#mv ${nazwa}-Android/game.apk NEW/"${nameandroid}"

