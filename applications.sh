#!/bin/bash

sudo apt update
sudo apt install -y podman distrobox

flatpak install -y flathub \
com.google.Chrome \
com.spotify.Client \
com.github.tchx84.Flatseal \
org.mozilla.Thunderbird \
md.obsidian.Obsidian \
com.bitwarden.desktop \
net.mullvad.MullvadBrowser \
io.missioncenter.MissionCenter
