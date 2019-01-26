#!/bin/bash

# Install Powerline Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install Papirus  (Icons)
# Debian
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

# Arch
# aurman -S papirus-icon-theme

# Install Numix (theme)
sudo apt install numix-gtk-theme

# Install lightdm slick greeter & settings editor
# sudo apt-get install lightdm-webkit-greeter

# Install shell
# Install zsh
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# Change theme to agnoster
sed -i.bak s/robbyrussell/agnoster/g ~/.zshrc
echo "DEFAULT_USER=\`whoami\`" >> ~/.zshrc

# Install albert (fuzzy search / Mac's Spotlight)
# Debian install
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -


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
