#!/bin/bash

TWSSA=$(wget -qO - "http://download.opensuse.org/tumbleweed/repo/oss/media.1/products" | grep -oP " \K\d+")
TWSSC=$(lsb_release -sr)

if [ "$TWSSA" == "$TWSSC" ] ; then
echo "\033[1mAucun nouveau snapshot disponible.\033[0m"
elif [ "$TWSSA" != "$TWSSC" ] ; then
echo "\033[1mSnapshot \"$TWSSA\" disponible !\033[0m\nCliquer ici pour consulter le changelog."
notify-send -i software-update-available-symbolic "Snapshot \"$TWSSA\" disponible !"
fi
