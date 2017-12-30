#!/bin/bash

gsk1="org.gnome.desktop.interface gtk-theme"
gsk2="org.gnome.desktop.wm.preferences theme"
gsc=$(gsettings get $gsk1)

if [ "$gsc" == "'Adwaita'" ]
then
gsettings set $gsk1 'Adwaita-dark' && gsettings set $gsk2 'Adwaita-dark'
elif [ "$gsc" == "'Adwaita-dark'" ]
then
gsettings set $gsk1 'Adwaita' && gsettings set $gsk2 'Adwaita'
fi
