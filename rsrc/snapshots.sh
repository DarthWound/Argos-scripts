#!/bin/bash

TWSSA=$(wget -qO - "http://download.opensuse.org/tumbleweed/repo/oss/media.1/products" | grep -oP " \K\d+")
TWSSC=$(lsb_release -sr)

# FRENCH
if [ "$TWSSA" == "$TWSSC" ] ; then
echo "Aucun nouveau snapshot disponible."
elif [ "$TWSSA" != "$TWSSC" ] ; then
echo "Snapshot \"$TWSSA\" disponible !" && notify-send -i software-update-available-symbolic "Snapshot \"$TWSSA\" disponible !"
fi

# ENGLISH
#if [ "$TWSSA" == "$TWSSC" ] ; then
#echo "No new snapshot available."
#elif [ "$TWSSA" != "$TWSSC" ] ; then
#echo "Snapshot \"$TWSSA\" available!" && notify-send -i software-update-available-symbolic "Snapshot \"$TWSSA\" available!"
#fi
