# Argos-DWS

Custom scripts to use with [Argos](https://extensions.gnome.org/extension/1176/argos/) GNOME Shell extension.

Intended for openSUSE, but you can remove specific entries and edit `upgrade.sh` file easily.

> **Features:**

> * Show if a new snapshot is available + desktop notification _(openSUSE Tumbleweed updates)_

> * 2-clicks system update _(supports openSUSE -default-, Fedora, Ubuntu/Debian, Arch)_

> * 2-clicks YaST _(ncurses mode, for Wayland)_

> * 2-clicks enable or disable dark theme _(for Adwaita + Adapta, Arc, Geeko, Materia)_

> * Matrix script in fullscreen terminal _(nice screensaver)_

> * Tweaking made easy with descriptive comments almost everywhere

> * other small stuff

## Requirements

- Chrome Gnome Shell

- Python3

- LSB Release

- GNOME Terminal

- wget / grep / xdg-open

Make sure that everything is installed in...

openSUSE: `su -c 'zypper in chrome-gnome-shell python3 lsb-release wget grep xdg-utils gnome-terminal'`

Fedora: `su -c 'dnf install chrome-gnome-shell python3 redhat-lsb wget grep xdg-utils gnome-terminal'`

Ubuntu/Debian: `su -c 'apt install chrome-gnome-shell python3 lsb-release wget grep xdg-utils gnome-terminal'`

Arch: `su -c 'pacman -S chrome-gnome-shell python lsb-release wget grep xdg-utils gnome-terminal'`

## Installation

**Install Argos extension first!**

https://extensions.gnome.org/extension/1176/argos/

I suggest you to clean Argos folder:
```
rm -rf ~/.config/argos/*
```

Then, in user terminal, copy-paste this:
```
cd ~/.config/argos/ && wget https://github.com/DarthWound/Argos-DWS/blob/master/scripts.sh && mkdir rsrc && cd rsrc && wget https://github.com/DarthWound/Argos-DWS/blob/master/rsrc/matrix-curses.py https://github.com/DarthWound/Argos-DWS/blob/master/rsrc/upgrade.sh https://github.com/DarthWound/Argos-DWS/blob/master/rsrc/snapshots.sh https://github.com/DarthWound/Argos-DWS/blob/master/rsrc/yast.sh https://github.com/DarthWound/Argos-DWS/blob/master/rsrc/daynight.sh && cd .. && chmod -R a+x *
```

## Translation

**Default files are in french.**

To translate in english, open terminal as user and copy-paste this:
```
wget -qO- https://raw.githubusercontent.com/DarthWound/Argos-DWS/master/translate/english.sh | sh
```

To revert back to french, open terminal as user and copy-paste this:
```
wget -qO- https://raw.githubusercontent.com/DarthWound/Argos-DWS/master/translate/french.sh | sh
```

Feel free to submit translations for other languages in "issues" section :)

## Modifications

It's easy to tweak these scripts at your convenience if you know bash.

Title should automatically fetch your distro name with `lsb_release`, if not change the "$DIST" line in main file. 

## Screenshots

![screenshot_aS](https://i.imgur.com/brWHcIN.png)

![screencast_aS](https://i.imgur.com/k2VavpU.gif)

## Credits

[Matrix-Curses](http://github.com/devsnd/matrix-curses/) script by Tom Wallroth, slightly modified by me.
