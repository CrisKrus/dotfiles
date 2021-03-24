#!/bin/bash

sudo apt install -y git

read -p "Write a mail to configure the ssh key [mail@server.com] " MAIL

ssh-keygen -t ed25519 -C "$MAIL"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

sudo apt install -y xclip
xclip -selection clipboard < ~/.ssh/id_ed25519.pub

xdg-open https://github.com/settings/keys
