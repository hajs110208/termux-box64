echo installing packages
pkg install x11-repo glibc-repo -y && pkg install glibc box64-glibc
clear
sleep 3
echo now grant storage permission
termux-setup-storage
sleep 3
termux-setup-storage
sleep 4
clear
echo downloading and unpacking glibc
pkg install glibc box64-glibc
sleep 2
clear
echo setting up box64
echo "export LD_PRELOAD=$PREFIX/glibc/lib/ld-linux-aarch64.so.1 && $PREFIX/glibc/bin/box64 $1 $2 $3 $4 $5" > $PREFIX/bin/box64
chmod +x $PREFIX/bin/box64
sleep 2
clear
echo Done! now type box64 [program]
