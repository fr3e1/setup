#/bin/bash


declare -a packages
declare -a aurpackages
packages=($(cat packages.txt))
aur=($(cat aurpackages.txt))


sudo pacman -Syyu --needed "${packages[@]}" && yes
yay -Syyu --noconfirm "${aur[@]}"
