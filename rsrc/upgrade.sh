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
