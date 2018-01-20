#!/bin/bash

DIR=~/.config/argos/

clear
printf "Translating Argos scripts in english...\n"

cat > $DIR/scripts.45m.sh << "EOF"
#!/usr/bin/env bash
# Argos-DWS: argos scripts by darthwound
# Content is updated every 45 minutes (rename "45m" part in "scripts.45m.sh" to change that)

DIR=$(dirname "$0")/rsrc
# run "lsb_release --help" and "lsb_release -a" to change this if it doesn't fit your distro
DIST=$(lsb_release -sd | tr -d '"')
# following variables are for openSUSE Tumbleweed only (new snapshot notification and details)
TWSS=$($DIR/snapshots.sh)
TWSSA=$(wget -qO - "http://download.opensuse.org/tumbleweed/repo/oss/media.1/products" | grep -oP " \K\d+")

echo "$DIST"
echo "---"
echo "<b>Run YaST console</b> | iconName=system-run-symbolic | bash='$DIR/yast.sh && exit 0' terminal=true color=#73ba25" # openSUSE (Leap and Tumbleweed) only
echo "<b>System update</b> | iconName=view-refresh-symbolic | bash='screen $DIR/upgrade.sh && exit 0' terminal=true color=#35b9ab" # edit upgrade.sh for distro
echo "<small><i>$TWSS</i></small> | href='https://download.opensuse.org/tumbleweed/iso/Changes.$TWSSA.txt' color=#8e8e80" # openSUSE Tumbleweed only
echo "---"
echo "Toggle light/dark theme | bash='$DIR/daynight.sh' terminal=false" # edit daynight.sh for Adapta, Arc, Geeko, or Materia - request other themes on my GitHub
echo "Enter the matrix | bash='gnome-terminal --full-screen -- python3 $DIR/matrix-curses.py' terminal=false"
echo "---"
echo "Other"
echo "-- Open scripts folder | bash='xdg-open $DIR' terminal=false"
EOF

cat > $DIR/rsrc/snapshots.sh << "EOF"
#!/bin/bash

TWSSA=$(wget -qO - "http://download.opensuse.org/tumbleweed/repo/oss/media.1/products" | grep -oP " \K\d+")
TWSSC=$(lsb_release -sr)

if [ "$TWSSA" == "$TWSSC" ] ; then
echo "\033[1mNo new snapshot available.\033[0m\nCurrent version: \"$TWSSC\"."
elif [ "$TWSSA" != "$TWSSC" ] ; then
echo "\033[1mSnapshot \"$TWSSA\" available!\033[0m\nClick here to read the changelog."
notify-send -i software-update-available-symbolic "Snapshot \"$TWSSA\" available!"
fi
EOF

cat > $DIR/rsrc/upgrade.sh << "EOF"
#!/bin/bash

# openSUSE Tumbleweed
su -c 'zypper ref && zypper dup' # with recommended packages - could reinstall what you've removed but may avoid issues
#su -c 'zypper ref && zypper dup --no-recommends' # without recommended packages - doesn't reinstall some stuff that you removed

# openSUSE Leap
# su -c 'zypper ref && zypper up' # with recommended packages - could reinstall what you've removed but may avoid issues
# su -c 'zypper ref && zypper up --no-recommends' # without recommended packages - doesn't reinstall some stuff that you removed

# Fedora
# su -c 'dnf --refresh upgrade'

# Ubuntu/Debian
# su -c 'apt update && apt upgrade'

# Arch
# su -c 'pacman -Syu'

sleep 5s
clear

read -p "Reboot computer? [Y/n]: " REP
if [ "$REP" = "Y" ] || [ "$REP" = "y" ]
then
systemctl reboot; # try to replace with "sudo shutdown now" if you don't have SystemD
else
exit 0;
fi
EOF
