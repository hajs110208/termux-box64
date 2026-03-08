read -p "Would you like to change the mirror before doing anything? [Y/n]: " confirm

if [[ "$confirm" =~ ^[nN] ]]; then
    echo "Skipping..."
else
    termux-change-repo
fi
echo Installing required packages
pkg install x11-repo glibc-repo -y && pkg install glibc box64-glibc wget
clear
sleep 3
echo now grant storage permission
termux-setup-storage
sleep 4
clear
echo downloading and unpacking glibc
pkg install glibc box64-glibc
sleep 2
clear
echo setting up box64
wget -P $PREFIX/bin https://raw.githubusercontent.com/hajs110208/termux-box64/refs/heads/main/box64
chmod +x $PREFIX/bin/box64
sleep 2
clear
echo Done! now type box64 [program]
