#!/bin/bash

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
