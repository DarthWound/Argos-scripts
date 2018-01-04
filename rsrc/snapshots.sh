#!/bin/bash

TWSSA=$(wget -qO - "http://download.opensuse.org/tumbleweed/repo/oss/media.1/products" | grep -oP " \K\d+")
TWSSC=$(lsb_release -sr)

if [ "$TWSSA" == "$TWSSC" ] ; then
echo "Aucun nouveau snapshot disponible."
elif [ "$TWSSA" != "$TWSSC" ] ; then
echo "Snapshot \"$TWSSA\" disponible !" && notify-send -i software-update-available-symbolic "Snapshot \"$TWSSA\" disponible !"
fi
