#/bin/bash!

########## Add repositories ##########

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# OBS
sudo add-apt-repository ppa:obsproject/obs-studio

# KeePass
sudo add-apt-repository ppa:eugenesan/ppa

##########  Update system   ##########
sudo apt update
sudo apt upgrade

########## Install software ##########
sudo apt install vim -y
sudo apt install git -y
sudo apt install docker -y
sudo apt install spotify-client -y
sudo apt install obs-studio -y
sudo apt install keepass2 -y
sudo apt install vlc -y
sudo apt install npm -y
sudo apt install autojump -y

### Angular CLI ###
sudo npm install -g @angular/cli

### Oh my zsh ###
sudo apt install zsh -y
# take care this link can change any time
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# after that to use zsh by default zsh
chsh -s $(which zsh)

### Autojump ###
echo "" >> ~/.zshrc
echo "### Autojump ###" >> ~/.zshrc
echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc

### Custormize dock ###
gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#d3d3d3'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items false

### Customize interface ###
gsettings set org.gnome.desktop.interface clock-show-date true
# show battery percentage in case that you use laptop
# gsettings set org.gnome.desktop.interface show-battery-percentage true

### WIP resources status bar ###
# https://github.com/LukeSmithxyz/voidrice/tree/master/.scripts/statusbar
# https://www.youtube.com/watch?v=MNwpdqD_I8Y&t=799s

### Dropbox ###
# this option can't run on start up
# cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# ~/.dropbox-dist/dropboxd &

### Moeditor ###
# source to download .deb
# https://github.com/Moeditor/Moeditor/releases/download/v0.2.0-beta/moeditor_0.2.0-1_amd64.deb
