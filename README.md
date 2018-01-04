# Argos-scripts
Custom scripts to use with [Argos](https://extensions.gnome.org/extension/1176/argos/) GNOME Shell extension.

Intended for openSUSE, but you can remove specific entries and edit `upgrade.sh` file easily.

**Requires "lsb_release" and "python3"**, you should be able to install these items from your distro' repositories.


> **Features:**

> * Show if a new snapshot is available + desktop notification _(openSUSE Tumbleweed updates)_

> * 2-clicks system update _(supports openSUSE -default-, Fedora, Arch, Ubuntu/Debian)_

> * 2-clicks YaST _(ncurses mode, for Wayland)_

> * 2-clicks enable or disable dark theme _(for Adwaita + Adapta, Arc, Geeko, Materia)_

> * Matrix script in fullscreen terminal _(nice screensaver)_

> * Tweaking made easy with descriptive comments almost everywhere

> * other small stuff

## Installation
**Install Argos extension first!**

Then in user terminal, copy-paste this:
```
cd ~/.config/argos/ && wget https://github.com/DarthWound/Argos-scripts/blob/master/scripts.sh && mkdir rsrc && cd rsrc && wget https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/matrix-curses.py https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/upgrade.sh https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/snapshots.sh https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/yast.sh https://github.com/DarthWound/Argos-scripts/blob/master/rsrc/daynight.sh && cd .. && chmod -R a+x *
```
I suggest you to remove default files located in "~/.config/argos/" before.

**Some files are in french by default!**

To translate in english, open terminal as user and copy-paste this:
```
wget -qO- https://raw.githubusercontent.com/DarthWound/Argos-scripts/master/translate/english.sh | sh
```

To revert back to french, open terminal as user and copy-paste this:
```
wget -qO- https://raw.githubusercontent.com/DarthWound/Argos-scripts/master/translate/french.sh | sh
```
Feel free to submit translations for other languages in "issues" section :)

## Modifications
It's easy to tweak these scripts at your convenience if you know bash.

Title should automatically fetch your distro name with `lsb_release`, if not change the "$DIST" line in main file. 

## Screenshots
Default file, in french:

![screenshot_aS](https://i.imgur.com/DYGWBmL.png)

![screencast_aS](https://i.imgur.com/k2VavpU.gif)
