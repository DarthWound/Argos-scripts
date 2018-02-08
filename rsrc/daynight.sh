#!/bin/bash

gtk="/org/gnome/desktop/interface/gtk-theme"
wm="/org/gnome/desktop/wm/preferences/theme"
gs="/org/gnome/shell/extensions/user-theme/name"
gsc=$(dconf read $gtk)

# Disable the two wget lines if you want to keep your current terminal theme
if [ "$gsc" == "'Adwaita'" ]
then
dconf write $gtk "'Adwaita-dark'" && dconf write $wm "'Adwaita-dark'"
#wget -qO- https://raw.githubusercontent.com/DarthWound/flatui-gnome-terminal/master/flatuidark-gt.sh | sh
elif [ "$gsc" == "'Adwaita-dark'" ]
then
dconf write $gtk "'Adwaita'" && dconf write $wm "'Adwaita'"
#wget -qO- https://raw.githubusercontent.com/DarthWound/flatui-gnome-terminal/master/flatuilight-gt.sh | sh
fi

# Erdlowe (https://github.com/DarthWound/erdlowe-theme) - mix
#if [ "$gsc" == "'Erdlowe-light'" ]
#then
#dconf write $gtk "'Erdlowe-dark'" && dconf write $wm "'Erdlowe-dark'" && dconf write $gs "'Erdlowe-dark-compact'"
#elif [ "$gsc" == "'Erdlowe-dark'" ]
#then
#dconf write $gtk "'Erdlowe-light'" && dconf write $wm "'Erdlowe-light'" && dconf write $gs "'Erdlowe-light-compact'"
#fi

# Erdlowe (https://github.com/DarthWound/erdlowe-theme)
#if [ "$gsc" == "'Erdlowe-light'" ]
#then
#dconf write $gtk "'Erdlowe-dark'" && dconf write $wm "'Erdlowe-dark'" && dconf write $gs "'Erdlowe-dark'"
#elif [ "$gsc" == "'Erdlowe-dark'" ]
#then
#dconf write $gtk "'Erdlowe-light'" && dconf write $wm "'Erdlowe-light'" && dconf write $gs "'Erdlowe-light'"
#fi

# Erdlowe Compact (https://github.com/DarthWound/erdlowe-theme)
#if [ "$gsc" == "'Erdlowe-light-compact'" ]
#then
#dconf write $gtk "'Erdlowe-dark-compact'" && dconf write $wm "'Erdlowe-dark-compact'" && dconf write $gs "'Erdlowe-dark-compact'"
#elif [ "$gsc" == "'Erdlowe-dark-compact'" ]
#then
#dconf write $gtk "'Erdlowe-light-compact'" && dconf write $wm "'Erdlowe-light-compact'" && dconf write $gs "'Erdlowe-light-compact'"
#fi

# Geeko (https://github.com/LelCP/geeko-gtk-theme)
#if [ "$gsc" == "'Geeko'" ]
#then
#dconf write $gtk "'Geeko-Dark'" && dconf write $wm "'Geeko-Dark'" && dconf write $gs "'Geeko-Dark'"
#elif [ "$gsc" == "'Geeko-Dark'" ]
#then
#dconf write $gtk "'Geeko'" && dconf write $wm "'Geeko'" && dconf write $gs "'Geeko'"
#fi

# Materia (https://github.com/nana-4/materia-theme)
#if [ "$gsc" == "'Materia-light'" ]
#then
#dconf write $gtk "'Materia-dark'" && dconf write $wm "'Materia-dark'" && dconf write $gs "'Materia-dark'"
#elif [ "$gsc" == "'Materia-dark'" ]
#then
#dconf write $gtk "'Materia-light'" && dconf write $wm "'Materia-light'" && dconf write $gs "'Materia-light'"
#fi

# Materia Compact (https://github.com/nana-4/materia-theme)
#if [ "$gsc" == "'Materia-light-compact'" ]
#then
#dconf write $gtk "'Materia-dark-compact'" && dconf write $wm "'Materia-dark-compact'" && dconf write $gs "'Materia-dark-compact'"
#elif [ "$gsc" == "'Materia-dark-compact'" ]
#then
#dconf write $gtk "'Materia-light-compact'" && dconf write $wm "'Materia-light-compact'" && dconf write $gs "'Materia-light-compact'"
#fi

# Adapta (https://github.com/adapta-project/adapta-gtk-theme)
#if [ "$gsc" == "'Adapta'" ]
#then
#dconf write $gtk "'Adapta-Nokto'" && dconf write $wm "'Adapta-Nokto'" && dconf write $gs "'Adapta-Nokto'"
#elif [ "$gsc" == "'Adapta-Nokto'" ]
#then
#dconf write $gtk "'Adapta'" && dconf write $wm "'Adapta'" && dconf write $gs "'Adapta'"
#fi

# Adapta Eta (https://github.com/adapta-project/adapta-gtk-theme)
#if [ "$gsc" == "'Adapta-Eta'" ]
#then
#dconf write $gtk "'Adapta-Nokto-Eta'" && dconf write $wm "'Adapta-Nokto-Eta'" && dconf write $gs "'Adapta-Nokto-Eta'"
#elif [ "$gsc" == "'Adapta-Nokto-Eta'" ]
#then
#dconf write $gtk "'Adapta-Eta'" && dconf write $wm "'Adapta-Eta'" && dconf write $gs "'Adapta-Eta'"
#fi

# Arc (https://github.com/horst3180/Arc-theme)
#if [ "$gsc" == "'Arc'" ]
#then
#dconf write $gtk "'Arc-Dark'" && dconf write $wm "'Arc-Dark'" && dconf write $gs "'Arc-Dark'"
#elif [ "$gsc" == "'Arc-Dark'" ]
#then
#dconf write $gtk "'Arc'" && dconf write $wm "'Arc'" && dconf write $gs "'Arc'"
#fi
