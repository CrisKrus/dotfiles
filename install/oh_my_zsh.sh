#!/bin/bash

sudo apt install curl zsh -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -s ~/.dotfiles/home/zshrc ~/.zshrc
