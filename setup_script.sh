#!/usr/bin/env bash
# Created by: Mitchell Hill
# # Created on: Sept 2024
# # AWS Debian Linux .dotfiles ans setup script

sudo apt update
sudo apt upgrade -y

# common programs
sudo apt remove w3m -y
sudo apt install git -y
sudo apt install gh -y
sudo apt install stow -y
sudo apt install tree -y

# install NeoVim from source
mkdir temp
cd temp || exit
sudo apt-get install ninja-build gettext cmake unzip curl -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd .. || exit
cd .. || exit
sudo rm -r ./temp

# install languages, bun and Java
sudo apt install -y default-jdk
curl -fsSL https://bun.sh/install | bash
# shellcheck source=/dev/null
source ~/.bashrc
