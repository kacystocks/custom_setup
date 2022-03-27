#!/bin/bash

# add stable neovim repo
sudo add-apt-repository ppa:neovim-ppa/stable

# update
sudo apt update ; sudo apt upgrade -y

# install neovim
sudo apt install neovim -y

# install python3-pip python3 nodejs npm xsel 
sudo apt install python3 python3-pip nodejs npm xsel 


# install python dependencies
python3 -m pip install pynvim

# allow npm to modify /usr/local/bin/
sudo chmod 776 /usr/local/bin/

# install neovim dependencies from npm
npm i -g neovim

# install treesitter
npm i -g treesitter

# clone packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# clone nvim setup from LunarVim/Neovim-from-scratch
git clone https://github.com/LunarVim/Neovim-from-scratch.git ~/.config/nvim

# echo a few extra steps one could make
echo "don't forget to allow termguicolors in options.lua,

you may also want to add 'p00f/nvim-ts-rainbow' in 
plugins.lua and add rainbow to treesitter.

_______________________________________________________

to install rust:
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

to install ripgrep(faster grep):
cargo install ripgrep
"
