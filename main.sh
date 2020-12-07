#!/bin/bash

# Update the system
sudo pacman -Syu

# Install basic programs
sudo pacman -Sy base-devel git

# Install yay for AUR
cd $HOME/Downloads
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# Test whether yay is well installed
yay -Syu dropbox

# Install LaTeX
sudo pacman -Sy texlive-most texlive-langkorean texlive-games

