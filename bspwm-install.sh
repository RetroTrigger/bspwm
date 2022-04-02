#!/bin/bash

# Easy setup for testing
mkdir ~/.local/share/fonts
cp -R IosevkaTermNerdFontComplete.ttf ~/.local/share/fonts
cp -R .config/* ~/.config/
chmod -R +x ~/.config/bspwm
chmod -R +x ~/.config/polybar/scripts
cat packages-repository.txt | xargs sudo dnf -y install
sudo fc-cache -f -v
dbus-launch dconf load / < xed.dconf
