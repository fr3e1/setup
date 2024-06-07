sudo -v


mkdir temp
declare -a packages
declare -a aurpackages
packages=($(cat packages.txt))
aur=($(cat aurpackages.txt))



packageinstall() {

sudo pacman -Syyu --needed "${packages[@]}" && yes
yay -Syu --noconfirm "${aur[@]}"


}

yaysetup() {
sudo -v
{
git clone https://aur.archlinux.org/yay.git
mv yay/ temp/yay
cd temp/yay && makepkg -si --noconfirm
cd
}
}

#dotfiles() {


#}



yaysetup
#packageinstall
#rm -rfv temp
#echo
echo "done!"
