#!/usr/bin/env bash
# Argos-DWS: argos scripts by darthwound
# Content is updated every 45 minutes (rename "45m" part in "scripts.45m.sh" to change that)

DIR=$(dirname "$0")/rsrc
# run "lsb_release --help" and "lsb_release -a" to change this if it doesn't fit your distro
DIST=$(lsb_release -sd | tr -d '"') #openSUSE
#DIST=$(lsb_release -sri) # Fedora
# following variables are for openSUSE Tumbleweed only (new snapshot notification and details)
TWSS=$($DIR/snapshots.sh)
TWSSA=$(wget -qO - "http://download.opensuse.org/tumbleweed/repo/oss/media.1/products" | grep -oP " \K\d+")

echo "$DIST"
#echo "$DIST <big>&#124;</big> $XDG_CURRENT_DESKTOP"
echo "---"
echo "<b>Lancer la console YaST</b> | iconName=system-run-symbolic | bash='$DIR/yast.sh && exit 0' terminal=true color=#73ba25" # openSUSE (Leap and Tumbleweed) only
echo "<b>Mettre à jour le système</b> | iconName=view-refresh-symbolic | bash='screen $DIR/upgrade.sh && exit 0' terminal=true color=#35b9ab" # edit upgrade.sh for distro
echo "<small><i>$TWSS</i></small> | href='https://download.opensuse.org/tumbleweed/iso/Changes.$TWSSA.txt' color=#8e8e80" # openSUSE Tumbleweed only
echo "---"
echo "Basculer thème clair/foncé | bash='$DIR/daynight.sh' terminal=false" # edit daynight.sh for Adapta, Arc, Geeko, or Materia - request other themes on my GitHub
echo "Entrer dans la matrice | bash='gnome-terminal --full-screen -- python3 $DIR/matrix-curses.py' terminal=false"
echo "---"
echo "Autres"
echo "-- Ouvrir le dossier de scripts | bash='xdg-open $DIR' terminal=false"
#echo "-- Lancer l'utilitaire Erdlöwe | bash='~/.bin/erdlowe.sh' terminal=true" # only if you installed my Erdlöwe theme with dedicated scripts
