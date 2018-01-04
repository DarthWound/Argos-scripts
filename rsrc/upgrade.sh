#!/bin/bash

# openSUSE Tumbleweed
su -c 'zypper ref && zypper dup --no-allow-vendor-change --no-recommends'

# openSUSE Leap
# su -c 'zypper ref && zypper up --no-recommends'

# Fedora
# su -c 'dnf --refresh upgrade'

# Ubuntu/Debian
# su -c 'apt update && apt upgrade'

# Arch
# su -c 'pacman -Syu'

# Ask for reboot in french (requires SystemD)
read -p "Redémarrer l'ordinateur ? [O/n]" REP
if [ "$REP" = "O" ] || [ "$a" = "o" ]
then
systemctl reboot;
else
exit 0;
fi

# Ask for reboot in english (requires SystemD)
# read -p "Reboot computer? [Y/n]" REP
# if [ "$REP" = "Y" ] || [ "$a" = "y" ]
# then
# systemctl reboot;
# else
# exit 0;
# fi
