DIR=$(pwd)
echo "$DIR"
sudo pacman -S base-devel --noconfirm
sudo pacman -Syu --noconfirm
sudo pacman -S i3 --noconfirm
sudo pacman -S kitty --noconfirm
sudo pacman -S rofi --noconfirm
sudo pacman -S picom --noconfirm
sudo pacman -S feh --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S flameshot --noconfirm
sudo pacman -S polybar --noconfirm
cd ~/.config
mkdir installs
cd installs
git clone https://aur.archlinux.org/polybar.git 
cd polybar
makepkg -si~--noconfirm

cd ~/.config/
FILE1="~/.config/i3/config"
if test ! -f "$FILE1"
then

mkdir i3
cd i3

fi

cp $DIR/I3config ~/.config/i3/config

FILE2="~/.config/picom.conf"
if test ! -f "$FILE2"
then

cd ~/.config/

fi

cp $DIR/picom.conf ~/.config/picom.conf

FILE3= "~/.config/rofi/config.rasi"
if test ! -f "$FILE3"
then

cd ~/.config/
mkdir rofi

fi

cp $DIR/Rofi/config.rasi ~/.config/rofi/config.rasi


FILE4= "~/.config/rofi/rofi-themes/theme1.rasi"
if test ! -f "$FILE4"
then 

cd ~/.config/rofi/
mkdir rofi-themes

fi

cp $DIR/Rofi/theme1.rasi ~/.config/rofi/rofi-themes/theme1.rasi

FILE5= "~/.config/i3status/i3status.conf"
if test ! -f "$FILE5"
then

cd ~/.config/
mkdir i3status

fi
cd ~/.config

mkdir kitty
cp $DIR/kitty/kitty.conf ~/.config/kitty/kitty.conf
cd ~/.config/kitty
mkdir kitty-themes
cp $DIR/kitty/kitty-themes/theme1.conf ~/.config/kitty/kitty-themes/theme1.conf

cp $DIR/I3status ~/.config/i3status/i3status.conf

cd ~/.config
mkdir polybar
cp $DIR/polybar/config ~/.config/polybar
cp $DIR/polybar/launch.sh ~/.config/polybar
cd ~/.config/polybar
chmod +x launch.sh

cd ~/.config
mkdir wallpapers
cp $DIR/wallpapers/420.jpg ~/.config/wallpapers/normal.jpg
cp $DIR/wallpapers/420.1.jpg ~/.config/wallpapers/noobs.jpg

cp $DIR/.bashrc ~/.bashrc
cd ~ 

 

