#!/bin/bash

sudo apt install curl -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -s ~/.dotfiles/home/zshrc ~/.zshrc
