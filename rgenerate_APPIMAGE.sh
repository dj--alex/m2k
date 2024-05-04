#!/bin/bash
#Generator APPIMAGE for Love.Your app must be in  GAMENAME and near linuxver is GAMENAME-Linux, near GAMENAME-debpack must exist!
#GAMENAME-App path must contain squashfs-root, AppImageKit-13.zip ,appimagetool-x86_64.AppImage
#/usr/MD5 -??
#### Ключ --summ ищет текстовый файл MD5. Сам MD5 я получаю через find . -type f -not -name MD5 -exec md5sum {} > ./MD5 +
# Это в каталоге usr, если что.
# Если не собираешься заниматься контролем целостности файлов (аппимидж это умеет сам, писалось не под него), просто удали всю функцию, ключ и упоминание в help'е
bver=$(cat build.ini) #&& echo $bver
nazwa=$(cat nazwa.ini) #&& echo $nazwa
cd ..
mkdir ${nazwa}-App
mkdir ${nazwa}-App/squashfs-root
mkdir ${nazwa}-App/squashfs-root/usr
#### Собственно это должно создавать каталоги и симлинки на них, если я папки не перепутал. Обязательно проверь пути!!!
mkdir -p "/tmp/${nazwa}"
mkdir -p "/tmp/${nazwa}/saves"
mkdir -p "/tmp/${nazwa}/Levels"
ln -s "/tmp/${nazwa}/Levels" "${nazwa}-App/squashfs-root/usr/Levels"
ln -s "/tmp/${nazwa}/saves"  "${nazwa}-App/squashfs-root/usr/saves"
rm ${nazwa}-App/squashfs-root/${nazwa}.desktop
rm ${nazwa}-App/squashfs-root/${nazwa}.png
cp ${nazwa}-Linux/icon.png ${nazwa}-App/squashfs-root/${nazwa}.png
{
echo '[Desktop Entry]'
echo 'Name='${nazwa}''
echo 'GenericName='${nazwa}''
echo 'Type=Application'
echo 'Categories=Game;'
echo 'Exec=AppRun.sh %F'
echo 'Terminal=false'
echo 'StartupNotify=true'
echo 'Icon='${nazwa}''
echo 'Name[ru]='${nazwa}''
} > ${nazwa}-App/squashfs-root/${nazwa}.desktop
cp -rf  ${nazwa}-Linux/* ${nazwa}-App/squashfs-root/usr/
# этот код нормально не хочет копировать папку!! либо копирует часть файлов (Если *.* писать. если нет тупо копирует Kolonista-Linux НЕ ПЕРЕИМЕНОВАВ ее в usr )
mv -rf ${nazwa}-App/squashfs-root/usr/${nazwa}-Linux ${nazwa}-App/squashfs-root/usr/usr
#a MV i rename не хотят переименовывать папку какую то чушню вмето этого пишут.
#mv Kolonista-App/squashfs-root/usr/Kolonista-Linux Kolonista-App/squashfs-root/usr/usr
#--parent
##slow version
cp ${nazwa}-Linux/usr/bin/m2ktest.lib ${nazwa}-App/squashfs-root/usr/usr/bin/m2ktest.lib
##fast version (only lib file)

mkdir ${nazwa}-App/squashfs-root/usr/bin
rm ${nazwa}-App/squashfs-root/usr/bin/AppRun.sh
{
echo '#!/bin/bash'
echo 'export GAMENAME="'${nazwa}'" '
echo 'export VERSION="'${bver}'"'
echo 'export SAVEDIR="$HOME/.local/share/'${nazwa}'/"'
echo 'mkdir -p "$HOME/.local/share/'${nazwa}'/"'
echo 'export LC_ALL="C"'
echo 'export EXE="start_game"'
echo 'do_start () {'
echo '	mkdir -p "/tmp/'${nazwa}'/"'
echo '	mkdir -p "$HOME/.local/share/'${nazwa}'/saves"'
echo '	mkdir -p "$HOME/.local/share/'${nazwa}'/Levels"'
echo '	ln -s "$HOME/.local/share/'${nazwa}'/saves" "/tmp/'${nazwa}'/"'
echo '  ln -s "$HOME/.local/share/'${nazwa}'/Levels" "/tmp/'${nazwa}'/"'
echo '	if command -v gamemoderun > /dev/null; then'
echo '		env gamemoderun ./"$EXE"'
echo '	else'
echo '		./"$EXE"'
echo '	fi'
echo '}'
echo 'do_summ () {'
echo '	if md5sum -c ./MD5 | grep -v "OK"; then'
echo '		echo "содержимое повреждено"'
echo '	else'
echo '		echo "содержимое цело"'
echo '	fi'
echo '}'
#echo 'case "$1" in'
#echo '		clear'
#echo '	echo "===================="'
#echo '		echo "Game: $GAMENAME"'
#echo '		echo "Version: $VERSION"'
#echo '		echo "===================="'
#echo '		echo "Savedir: $SAVEDIR"'
#echo '	;;'
#echo '		clear'
#echo '		echo "   --version          узнать версию игры    "'
#echo '		echo "   --appimage-extract распаковать appimage"'
#echo '		echo "   --appimage-mount   примонтировать appimage"'
#echo '		echo "   --summ             проверить контрольные суммы"'
#echo '	;;'
#echo '		do_summ'
#echo '	;;'
#какую то хуету пишет пришлось всё закомментить user@PC1:/media/user/PC1-DAT/Game$ ./M2K-10687-x86_64.AppImage 
#/tmp/.mount_M2K-107K6NrQ/usr/bin//AppRun.sh: line 28: syntax error near unexpected token `"Game: $GAMENAME"'  какой то блять неисследованный блять токен.
#/tmp/.mount_M2K-107K6NrQ/usr/bin//AppRun.sh: line 28: `		echo "Game: $GAMENAME"'
#echo '*)      '
#### Естественно пишет. Ты же используешь переменную ${nazwa}, а в echo передаешь $GAMENAME. То же самое и с $VERSION. 
# Так же крайне рекомендую прогонять свои скрипты через shellcheck 
echo '		do_start'
#echo 'esac'
echo 'rm -rf "/tmp/'${nazwa}'/"'
} > ${nazwa}-App/squashfs-root/usr/bin/AppRun.sh
chmod +x  ${nazwa}-App/squashfs-root/usr/bin/AppRun.sh

cd ${nazwa}-App
./appimagetool-x86_64.AppImage  --no-appstream --comp gzip squashfs-root ${nazwa}-x86_64.AppImage
cd ..
mv ${nazwa}-App/${nazwa}-x86_64.AppImage NEW/${nazwa}-${bver}-x86_64.AppImage
