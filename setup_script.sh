#!/user/bin/env bash
# Created by: Alex Nelson
# Created on: Sept 2024
# AWS Debian Linux .dotfiles and setup script

sudo apt update
sudo apt upgrade -y

# Setup programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y

# Neovim Installation
mkdir temp
cd temp
sudo apt-get install ninja-build gettext cmake unzip curl build-essential -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
cd ..
sudo rm -r ./temp

# install languages
curl -fsSL https://bun.sh/install | bash
sudo apt install -y default-jdk

# copy over the scripts folder into the home directory
cp -r ./scripts/ ~/

# folder structure
mkdir ~/ICS4U
mkdir ~/ICS4U/Unit1
mkdir ~/ICS4U/Unit1/Unit1-01
mkdir ~/ICS4U/Unit1/Unit1-02
mkdir ~/ICS4U/Unit1/Unit1-03
mkdir ~/ICS4U/Unit1/Unit1-04
mkdir ~/ICS4U/Unit1/Unit1-05
mkdir ~/ICS4U/Unit1/Unit1-06
mkdir ~/ICS4U/Unit1/Unit1-07
# ...

# reboot
echo =====================
echo nature is calling ... 
echo =====================
sudo reboot now
