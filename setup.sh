#!/bin/bash

rm $HOME/.profile
ln -s $HOME/.dotfiles/home/profile $HOME/.profile
ln -s $HOME/.dotfiles/home/aliases $HOME/.bash_aliases
ln -s $HOME/.dotfiles/home/gitconfig $HOME/.gitconfig

### Update system ###
sudo apt update
sudo apt upgrade -y

sudo apt install -y vim git obs-studio keepassx npm code lm-sensors zsh fzf

### Working things ###
sh ./install/vscode.sh
sh ./install/docker.sh
sh ./install/google_drive.sh
sh ./install/oh_my_zsh.sh

### Customizations ###
sh ./install/custom_interface.sh
