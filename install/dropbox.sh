#!/bin/bash

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
