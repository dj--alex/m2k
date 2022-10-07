#!/bin/bash
bver=$(cat build.ini) #&& echo $bver unibuilder v2.1  .  In M2K  build number Тут указываете файл где храните обновляемый номер билда
nazwa=$(cat nazwa.ini) #&& echo $nazwa  In M2K title game  Тут указываете файл где хранится название.
nameandroid="${nazwa}-Android-$bver.apk" #final application love2d lua name
export ANDROID_HOME=/home/user/Android-SDK/  # `ANDROID_NDK_HOME`
SDK="/home/user/Android-SDK/build-tools/28.0.3/" #Your SDK build tools path (Execs)
SDL2="/home/user/Android-compile/love-android-sdl2/" #Love-android-SDL2 path
#--SDK="/media/user/D/Programs/Android-SDK/build-tools/28.0.3/" #Your SDK build tools path (Execs)
#--SDL2="/media/user/D/Programs/Android-compile/love-android-sdl2/" #Love-android-SDL2 path
sed -ie 's/versionName ".*"/versionName "'${bver}'"/' ${SDL2}app/build.gradle
sed -ie 's/versionCode .*/versionCode '${bver}'/' ${SDL2}app/build.gradle
sed -ie 's/applicationId ".*"/applicationId "org.'${nazwa}'.android"/' ${SDL2}app/build.gradle
sed -ie 's/android:label=".*"/android:label="'${nazwa}'"/' ${SDL2}app/src/main/AndroidManifest.xml
#git clone https://bitbucket.org/MartinFelis/love-android-sdl2 --recurse-submodules  export PATH=${SDK}
#synaptic install openjdk-8-jdk openjdk-8-jre 80 #sudo apt install curl zipalign 
cd ..
mkdir ${SDL2}app/src/main/assets # Assets of SDL2
rm ${SDL2}app/src/main/assets/game.love 
rm ${SDL2}love_icon_512x512.png
cp ${nazwa}/m2ktest.lib ${SDL2}app/src/main/assets/game.love
cp ${nazwa}/icon.png ${SDL2}love_icon_512x512.png
convert ${nazwa}/icon.png -resize 72x72\! ${SDL2}app/src/main/res/drawable-hdpi/icon.png
convert ${nazwa}/icon.png -resize 72x72\! ${SDL2}app/src/main/res/drawable-hdpi/love.png
convert ${nazwa}/icon.png -resize 48x48\! ${SDL2}app/src/main/res/drawable-mdpi/icon.png
convert ${nazwa}/icon.png -resize 48x48\! ${SDL2}app/src/main/res/drawable-mdpi/love.png
convert ${nazwa}/icon.png -resize 96x96\! ${SDL2}app/src/main/res/drawable-xhdpi/icon.png  
convert ${nazwa}/icon.png -resize 96x96\! ${SDL2}app/src/main/res/drawable-xhdpi/love.png  
convert ${nazwa}/icon.png -resize 144x144\! ${SDL2}app/src/main/res/drawable-xxhdpi/icon.png
convert ${nazwa}/icon.png -resize 144x144\! ${SDL2}app/src/main/res/drawable-xxhdpi/love.png
convert ${nazwa}/icon.png -resize 192x192\! ${SDL2}app/src/main/res/drawable-xxxhdpi/icon.png
convert ${nazwa}/icon.png -resize 192x192\! ${SDL2}app/src/main/res/drawable-xxxhdpi/love.png
#cp ${nazwa}/icon.png ${SDL2}app/src/main/res/drawable-xhdpi/love.png  #96x96 only  XDPI na xiaomi
${SDL2}./gradlew  assemble -p ${SDL2} # *** 
zipalign -v -p 4 ${SDL2}app/build/outputs/apk/release/app-release-unsigned.apk ${SDL2}app/build/outputs/apk/release/aligned-"${nameandroid}"
#keytool -genkey -v -keystore my-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-alias #--делается 1 раз! 
${SDK}./apksigner sign --ks ${SDL2}my-release-key.jks --out ${SDL2}app/build/outputs/apk/release/"${nameandroid}" ${SDL2}app/build/outputs/apk/release/aligned-"${nameandroid}"

cp ${SDL2}app/build/outputs/apk/release/${nameandroid} NEW/${nameandroid}
