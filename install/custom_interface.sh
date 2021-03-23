#!/bin/bash

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
gsettings set org.gnome.desktop.calendar show-weekdate true
# show battery percentage in case that you use laptop
# gsettings set org.gnome.desktop.interface show-battery-percentage true
