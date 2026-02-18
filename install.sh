echo installing packages
pkg install x11-repo glibc-repo -y && pkg install pulseaudio wget glibc git xkeyboard-config freetype fontconfig libpng xorg-xrandr termux-x11-nightly termux-am zenity which bash curl sed cabextract -y --no-install-recommends
clear
sleep 3
echo now grant storage permission
termux-setup-storage
sleep 3
termux-setup-storage
sleep 4
clear
echo downloading and unpacking glibc
wget -q --show-progress https://github.com/Ilya114/Box64Droid/releases/download/alpha/glibc-prefix.tar.xz
sleep 2
clear
tar -xJf glibc-prefix.tar.xz -C $PREFIX/
echo setting up box64
echo "export LD_PRELOAD=$PREFIX/glibc/lib/ld-linux-aarch64.so.1 && $PREFIX/glibc/bin/box64 $1" > $PREFIX/bin/box64
chmod +x $PREFIX/bin/box64
sleep 2
echo now deleting trashes
sleep 2
rm glibc-prefix.tar.xz
