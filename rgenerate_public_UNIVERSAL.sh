#!/bin/bash
bver=$(cat build.ini) #&& echo $bver unibuilder v2.0
nazwa=$(cat nazwa.ini) #&& echo $nazwa
cd ..
cp ${nazwa}/m2ktest.lib ${nazwa}-Linux/usr/bin 
cp ${nazwa}/m2ktest.lib ${nazwa}-Windows/${nazwa}-src
cp ${nazwa}/m2ktest.lib ${nazwa}-Android/game.love
namelinux="${nazwa}-Linux-$bver.tar.gz"
namewindows="${nazwa}-Windows-$bver.tar.gz"
nameandroid="${nazwa}-Android-$bver.apk" #final application love2d lua name
rm "${namelinux}"
tar -czf "${namelinux}" ${nazwa}-Linux
cd ${nazwa}-Windows
cd ${nazwa}-src
#sh compile.sh
cat love.exe m2ktest.lib > ${nazwa}-Win64.exe
#cat love.exe game.love > m2k-Win64l.exe
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

