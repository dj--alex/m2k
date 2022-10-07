#!/bin/bash
bver=$(cat build.ini) #&& echo $bver  m2ktest.lib - is a temporary name game.love, user don't see it
cd ..
cp M2K/m2ktest.lib m2k-Linux/usr/bin 
cp M2K/m2ktest.lib m2k-Windows/M2k-src
#cp M2K/m2ktest.lib m2k-Android/game.love
namelinux="m2k-Linux-$bver.tar.gz" #final application love2d lua name
namewindows="m2k-Windows-$bver.tar.gz" #final application love2d lua name
nameandroid="m2k-Android-$bver.tar.gz" #final application love2d lua name
rm "${namelinux}"
tar -czf "${namelinux}" m2k-Linux
cd m2k-Windows
cd M2k-src
sh compile.sh
cd ..
cd ..
cp m2k-Windows/M2k-src/m2k-Win64.exe m2k-Windows/M2k-Win/m2k-Win64.exe
cd m2k-Windows
rm "${namewindows}"
tar -czf "${namewindows}" M2k-Win
cd ..
mv "${namelinux}" NEW/"${namelinux}"
mv m2k-Windows/"${namewindows}" NEW/"${namewindows}"
#cd m2k-Android
#sh make-apk.sh
#cd ..
#mv m2k-Android/game.apk NEW/"${nameandroid}"

