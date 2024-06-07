#/bin/bash

sudo -v


mkdir temp




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

dotfiles() {
mkdir /dotfilebackup
mv ~/.config/alacritty /dotfilebackup
mv ~/.config/fastfetch /dotfilebackup
mv ~/.config/i3 /dotfilebackup
mv ~/.config/neofetch /dotfilebackup
mv ~/.config/nitrogen /dotfilebackup
mv ~/.config/polybar /dotfilebackup
}



yaysetup
packageinstall & rm -rfv temp
wecho
echo "done!"
