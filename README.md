# Argos-DWS

Custom scripts to use with [Argos](https://extensions.gnome.org/extension/1176/argos/) GNOME Shell extension.

Intended for openSUSE Tumbleweed, but you can remove specific entries and edit `upgrade.sh` file easily.

> **Features:**

> * Show if a new snapshot is available + desktop notification _(openSUSE Tumbleweed updates)_

> * 2-clicks system update _(supports openSUSE -default-, Fedora, Ubuntu/Debian, Arch)_

> * 2-clicks YaST _(ncurses mode, for Wayland)_

> * 2-clicks enable or disable dark theme _(for Adwaita or Erdlöwe, Geeko, Materia, Adapta, Arc)_

> * Matrix script in fullscreen terminal _(nice screensaver)_

> * Tweaking made easy with descriptive comments almost everywhere

> * Erdlöwe script quick access _(see my "erdlowe-gtk-theme" repo)_

> * other small stuff

PS: scripts refresh every 45 minutes, it means that notifications for Tumbleweed snapshots will pop every 45 minutes if updates are available, you can change the frequency by changing main script name _(45m part)_. To remove desktop notifications edit `rsrc/snapshots.sh` _(notify-send command)_, main script warns for new snapshot anyway.

## Requirements

- Chrome Gnome Shell

- Python3

- LSB Release

- GNOME Terminal

- GNU Screen (Tumbleweed only)

- wget / grep / xdg-open

- dconf

Make sure that everything is installed in...

openSUSE:

`su -c 'zypper in chrome-gnome-shell python3 lsb-release screen wget grep xdg-utils gnome-terminal dconf'`

Fedora:

`su -c 'dnf install chrome-gnome-shell python3 redhat-lsb wget grep xdg-utils gnome-terminal dconf'`

Ubuntu/Debian:

`su -c 'apt install chrome-gnome-shell python3 lsb-release wget grep xdg-utils gnome-terminal dconf-cli'`

Arch:

`su -c 'pacman -S chrome-gnome-shell python lsb-release wget grep xdg-utils gnome-terminal dconf'`

## Installation

**Install Argos extension first!**

https://extensions.gnome.org/extension/1176/argos/

I suggest you to clean Argos folder:
```
rm -rf ~/.config/argos/*
```

Then, in user terminal, copy-paste this:
```
cd ~/.config/argos/ && wget https://raw.githubusercontent.com/DarthWound/Argos-DWS/master/scripts.45m.sh && mkdir rsrc && cd rsrc && wget https://raw.githubusercontent.com/DarthWound/Argos-DWS/master/rsrc/matrix-curses.py https://raw.githubusercontent.com/DarthWound/Argos-DWS/master/rsrc/upgrade.sh https://raw.githubusercontent.com/DarthWound/Argos-DWS/master/rsrc/snapshots.sh https://raw.githubusercontent.com/DarthWound/Argos-DWS/master/rsrc/yast.sh https://raw.githubusercontent.com/DarthWound/Argos-DWS/master/rsrc/daynight.sh && cd .. && chmod -R a+x *
```

## Translation

**Default files are in french.**

To translate in english, open terminal as user and copy-paste this:
```
wget -qO- https://raw.githubusercontent.com/DarthWound/Argos-DWS/master/translate/english.sh | sh
```

Feel free to submit translations for other languages in "issues" section :)

## Modifications

It's easy to tweak these scripts at your convenience if you know bash a little.

Title should automatically fetch your distro name with `lsb_release`, if not change the "$DIST" line in main file. 

## Screenshots

![screenshot_aS](https://i.imgur.com/brWHcIN.png)

![screencast_aS](https://i.imgur.com/k2VavpU.gif)

## Credits

[Argos](https://github.com/p-e-w/argos/) extension by Philipp Emanuel Weidmann.

[Matrix-Curses](http://github.com/devsnd/matrix-curses/) script by Tom Wallroth, slightly modified by me.
