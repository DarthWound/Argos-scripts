#!/bin/bash

DIR=~/.config/argos/

clear
printf "Traduction des scripts Argos en français...\n"

cat > $DIR/scripts.30m.sh << "EOF"
#!/usr/bin/env bash

# Content of this script is updated every 30 minutes (rename "30m" part in scripts.30m.sh to change that)

DIR=$(dirname "$0")/rsrc
DIST=$(lsb_release -sd | tr -d '"')\ \($(lsb_release -sr)\)
TWSS=$($DIR/snapshots.sh) # openSUSE Tumbleweed only

echo "$DIST"
echo "---"
echo "<small><i><b>$TWSS</b></i></small>" # openSUSE Tumbleweed only
echo "---"
echo "<b>Mettre à jour le système</b> | iconName=view-refresh-symbolic | bash='screen $DIR/upgrade.sh && exit 0' terminal=true color=#35b9ab" # edit upgrade.sh for distro
echo "<b>Lancer la console YaST</b> | iconName=system-run-symbolic | bash='$DIR/yast.sh && exit 0' terminal=true color=#73ba25" # openSUSE (Leap and Tumbleweed) only
echo "---"
echo "Basculer thème clair/foncé | bash='$DIR/daynight.sh' terminal=false" # edit daynight.sh for Adapta, Arc, Geeko, or Materia - request other themes on my GitHub
echo "Entrer dans la matrice | bash='gnome-terminal --full-screen -- python3 $DIR/matrix-curses.py' terminal=false"
echo "---"
echo "Autres"
echo "-- Ouvrir le dossier de scripts | bash='xdg-open $DIR' terminal=false"
echo "-- Éditer le CSS gnome-shell | bash='xdg-open ~/.themes/Adwaita-DWS/gnome-shell/gnome-shell.css' terminal=false" # only if you use my custom gnome-shell theme
EOF

cat > $DIR/rsrc/snapshots.sh << "EOF"
#!/bin/bash

TWSSA=$(wget -qO - "http://download.opensuse.org/tumbleweed/repo/oss/media.1/products" | grep -oP " \K\d+")
TWSSC=$(lsb_release -sr)

if [ "$TWSSA" == "$TWSSC" ] ; then
echo "Aucun nouveau snapshot disponible."
elif [ "$TWSSA" != "$TWSSC" ] ; then
echo "Snapshot \"$TWSSA\" disponible !" && notify-send -i software-update-available-symbolic "Snapshot \"$TWSSA\" disponible !"
fi
EOF

cat > $DIR/rsrc/upgrade.sh << "EOF"
#!/bin/bash

# openSUSE Tumbleweed
su -c 'zypper ref && zypper dup --no-allow-vendor-change --no-recommends' # without recommended packages - doesn't reinstall some stuff that you removed
#su -c 'zypper ref && zypper dup --no-allow-vendor-change' # with recommended packages - could reinstall what you've removed but may avoid issues

# openSUSE Leap
# su -c 'zypper ref && zypper up --no-recommends' # without recommended packages - doesn't reinstall some stuff that you removed
# su -c 'zypper ref && zypper up' # with recommended packages - could reinstall what you've removed but may avoid issues

# Fedora
# su -c 'dnf --refresh upgrade'

# Ubuntu/Debian
# su -c 'apt update && apt upgrade'

# Arch
# su -c 'pacman -Syu'

sleep 5s
clear

read -p "Redémarrer l'ordinateur ? [O/n]: " REP
if [ "$REP" = "O" ] || [ "$REP" = "o" ]
then
systemctl reboot; # try to replace with "sudo shutdown now" if you don't have SystemD
else
exit 0;
fi
EOF
