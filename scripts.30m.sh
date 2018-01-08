#!/usr/bin/env bash
# Argos-DWS: argos scripts by darthwound
# Content is updated every 30 minutes (rename "30m" part in "scripts.30m.sh" to change that)

DIR=$(dirname "$0")/rsrc
DIST=$(lsb_release -sd | tr -d '"')\ \($(lsb_release -sr)\)
# following variables are for openSUSE Tumbleweed only (new snapshot notification and details)
TWSS=$($DIR/snapshots.sh)
TWSSA=$(wget -qO - "http://download.opensuse.org/tumbleweed/repo/oss/media.1/products" | grep -oP " \K\d+")

echo "$DIST"
echo "---"
echo "<small><i>$TWSS</i></small> | href='https://download.opensuse.org/tumbleweed/iso/Changes.$TWSSA.txt' color=#8e8e80" # openSUSE Tumbleweed only
echo "<b>Mettre à jour le système</b> | iconName=view-refresh-symbolic | bash='screen $DIR/upgrade.sh && exit 0' terminal=true color=#35b9ab" # edit upgrade.sh for distro
echo "<b>Lancer la console YaST</b> | iconName=system-run-symbolic | bash='$DIR/yast.sh && exit 0' terminal=true color=#73ba25" # openSUSE (Leap and Tumbleweed) only
echo "---"
echo "Basculer thème clair/foncé | bash='$DIR/daynight.sh' terminal=false" # edit daynight.sh for Adapta, Arc, Geeko, or Materia - request other themes on my GitHub
echo "Entrer dans la matrice | bash='gnome-terminal --full-screen -- python3 $DIR/matrix-curses.py' terminal=false"
echo "---"
echo "Autres"
echo "-- Ouvrir le dossier de scripts | bash='xdg-open $DIR' terminal=false"
#echo "-- Éditer le CSS gnome-shell | bash='xdg-open ~/.themes/Adwaita-DWS/gnome-shell/gnome-shell.css' terminal=false" # only if you use my custom gnome-shell theme
