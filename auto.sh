#!/bin/sh

git clone https://github.com/dokuro-chan/teamviewer.git && cd teamviewer

makepkg -s && sudo pacman -U *.pkg.tar.xz

wget -q https://raw.githubusercontent.com/dokuro-chan/teamviewer/master/teamviewerd
sudo chmod +x teamviewerd && sudo mv teamviewerd /etc/init.d && sudo rc-update add teamviewerd default

