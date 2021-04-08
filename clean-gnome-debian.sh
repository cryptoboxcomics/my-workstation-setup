#!/bin/bash

apt-get update
apt-get full-upgrade -y

apt-get purge gnome* -y
apt-get install gnome-terminal -y
apt-get install fish -y

wget https://github.com/VSCodium/vscodium/releases/download/1.55.0/codium_1.55.0-1617289089_amd64.deb
dpkg -i codium_1.55.0-1617289089_amd64.deb

git clone https://github.com/cryptoboxcomics/Kali-Ocean.git /usr/share/themes/Kali-Ocean

apt-get install awesome awesome-extra -y

apt install awesome fonts-roboto rofi compton i3lock xclip qt5-style-plugins materia-gtk-theme lxappearance xbacklight flameshot nautilus xfce4-power-manager pnmixer network-manager-gnome policykit-1-gnome -y
wget -qO- https://git.io/papirus-icon-theme-install | sh
git clone --branch debian https://github.com/ChrisTitusTech/titus-awesome ~/.config/awesome
mkdir -p ~/.config/rofi
cp $HOME/.config/awesome/theme/config.rasi ~/.config/rofi/config.rasi
sed -i '/@import/c\@import "'$HOME'/.config/awesome/theme/sidebar.rasi"' ~/.config/rofi/config.rasi

cp .xinitrc $HOME/.xinitrc
