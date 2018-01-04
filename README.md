# Argos-scripts
Custom scripts to use with [Argos](https://extensions.gnome.org/extension/1176/argos/) GNOME Shell extension.

Intended for openSUSE, but you can remove YaST entry and edit `upgrade.sh` file easily.

Some of these files are in french with english as an option (`scripts.12m.sh`, `upgrade.sh`, `snapshots.sh`).

Open them and add/remove bash comments (#) to convert. Translations are already there.

Requires "lsb_release" and "python3", you should be able to install these items from your distro' repositories.


> Features:

> * 2-clicks system update (supports openSUSE -default-, Fedora, Arch, Ubuntu/Debian)

> * 2-clicks YaST (ncurses mode, for Wayland)

> * 2-clicks enable or disable dark theme (for Adwaita + Adapta, Arc, Geeko, Materia)

> * Matrix script in fullscreen terminal (nice screensaver)

> * Tweaking made easy with descriptive comments almost everywhere

> * other small stuff

## Installation
Install Argos extension first!

Then in user terminal, copy-paste this:
```
cd ~/.config/argos && wget https://github.com/DarthWound/Argos-scripts/blob/master/scripts.sh && mkdir rsrc && cd rsrc && wget https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/matrix-curses.py https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/upgrade.sh https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/snapshots.sh https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/yast.sh https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/daynight.sh && cd .. && chmod -R a+x *
```

## Modifications
It's easy to tweak these scripts at your convenience if you know bash.

Title should automatically fetch your distro name with `lsb_release`, if not change the "$DIST" line in main file. 

## Screenshot
Default file, in french:

![screenshot_aS](https://i.imgur.com/DYGWBmL.png)
