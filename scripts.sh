#!/usr/bin/env bash

# FRENCH
DIR=$(dirname "$0")/rsrc
DIST=$(lsb_release -sd | tr -d '"')\ \($(lsb_release -sr)\)
echo "$DIST"
echo "---"
echo "<b>Mettre à jour le système</b> | iconName=view-refresh-symbolic | bash='$DIR/upgrade.sh' terminal=true color=#35b9ab"
echo "<b>Lancer la console YaST</b> | iconName=system-run-symbolic | bash='$DIR/yast.sh' terminal=true color=#73ba25"
echo "Basculer thème clair/foncé | bash='$DIR/daynight.sh' terminal=false"
echo "Entrer dans la matrice | bash='gnome-terminal --full-screen -- python3 $DIR/matrix-curses.py' terminal=false"
echo "---"
echo "Autres"
echo "-- Ouvrir le dossier de scripts | bash='xdg-open $DIR' terminal=false"
echo "-- Éditer le CSS gnome-shell | bash='xdg-open ~/.themes/Adwaita-DWS/gnome-shell/gnome-shell.css' terminal=false"

# ENGLISH
#DIR=$(dirname "$0")/rsrc
#DIST=$(lsb_release -sd | tr -d '"')\ \($(lsb_release -sr)\)
#echo "$DIST"
#echo "---"
#echo "<b>System update</b> | iconName=view-refresh-symbolic | bash='$DIR/upgrade.sh' terminal=true color=#35b9ab"
#echo "<b>Launch YaST console</b> | iconName=system-run-symbolic | bash='$DIR/yast.sh' terminal=true color=#73ba25"
#echo "Toggle light/dark theme | bash='$DIR/daynight.sh' terminal=false"
#echo "Enter the matrix | bash='gnome-terminal --full-screen -- python3 $DIR/matrix-curses.py' terminal=false"
#echo "---"
#echo "Other"
#echo "-- Open scripts folder | bash='xdg-open $DIR' terminal=false"
#echo "-- Edit gnome-shell CSS | bash='xdg-open ~/.themes/Adwaita-DWS/gnome-shell/gnome-shell.css' terminal=false"
