#!/bin/bash

# Install shell
# Install zsh & oh-my-zsh
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s $(which zsh)
# Change theme to agnoster
sed -n -i 's/ZSH_THEME\=.*"/ZSH_THEME\="agnoster"/' ~/.zshrc
# Install Powerline Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install Papirus  (Icons)
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

# Install Numix (theme)
sudo apt install numix-gtk-theme

# Manual Steps
# Update appearance (style & icons)
#	Numix-Frost-Light
#	Papirus
# Update window manager
#	Numix-Frost-Light
# Update terminal appearance
#	Font: Droid Sans Mono for Powerline Regular, 10
#	Colors: Tango
# Fix keyboard shortcuts
#	Open term: super + t
#	Open thunar: super + f
#	Open program search: alt + f3
