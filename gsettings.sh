#!/bin/bash

# Disable dynamic workspaces
gsettings set org.gnome.mutter dynamic-workspaces false

# Set 10 fixed workspaces
gsettings set org.gnome.desktop.wm.preferences num-workspaces 10

# Switch to workspace
for i in {1..9}; do
  gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "['<Alt>$i']"
done
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Alt>0']"

# Move to workspace
for i in {1..9}; do
  gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-$i "['<Shift><Alt>$i']"
done
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last "['<Shift><Alt>0']"

# Set dock position to the bottom
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'

