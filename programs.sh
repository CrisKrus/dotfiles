#/bin/bash!

### Update system ###
sudo apt update
sudo apt upgrade -y

sudo apt install curl -y

### VS Code Set up ###
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt update

### Install software ###

sudo apt install vim -y
sudo apt install git -y
sudo apt install docker.io -y
sudo apt install obs-studio -y
sudo apt install keepassx -y
sudo apt install npm -y
sudo apt install code -y


### Configure Docker to use it without sudo ###
sudo groupadd docker
sudo usermod -aG docker $USER


### Custormize dock ###
gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#d3d3d3'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items false

# TODO set up dark theme

### Customize interface ###
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.calendar show-weekdate true
# show battery percentage in case that you use laptop
# gsettings set org.gnome.desktop.interface show-battery-percentage true

### WIP resources status bar ###
# https://github.com/LukeSmithxyz/voidrice/tree/master/.scripts/statusbar
# https://www.youtube.com/watch?v=MNwpdqD_I8Y&t=799s

### Dropbox  ###
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

autostart_dropbox=$HOME/.config/autostart/dropbox.desktop
echo '[Desktop Entry]' >> autostart_dropbox
echo 'Type=Application' >> autostart_dropbox
echo 'Exec=/home/cristian/.dropbox-dist/dropboxd' >> autostart_dropbox
echo 'Hidden=false' >> autostart_dropbox
echo 'NoDisplay=false' >> autostart_dropbox
echo 'X-GNOME-Autostart-enabled=true' >> autostart_dropbox
echo 'Name[en_US]=Dropbox' >> autostart_dropbox
echo 'Name=Dropbox' >> autostart_dropbox
echo 'Comment[en_US]=Start up dropbox' >> autostart_dropbox
echo 'Comment=Start up dropbox' >> autostart_dropbox