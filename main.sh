#!/bin/bash

# Update the system
sudo pacman -Syu

# Install basic programs
sudo pacman -Sy base-devel git go

# Install yay for AUR
# TODO: Do this only if yay is not installed
cd $HOME/Downloads
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# Test whether yay is well installed
yay

# Install VirtualBox
sudo pacman -Sy virtualbox virtualbox-guest-iso
sudo gpasswd -a $USER vboxusers
sudo modprobe vboxdrv
# Install VirtualBox ext modules
yay -Sy virtualbox-ext-oracle
sudo systemctl enable vboxweb.service
sudo systemctl start vboxweb.service


# Install LaTeX
sudo pacman -Sy texlive-most texlive-langkorean texlive-games

#Install Korean
sudo pacman -S scim
yay -S ttf-nanum ttf-nanum_coding scim-hangul
cd $HOME
echo 'export XMODIFIERS=@im=SCIM
export GTK_IM_MODULE="xim"
export QT_IM_MODULE="scim"
scim -d
'

