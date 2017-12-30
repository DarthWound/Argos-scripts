#!/bin/bash

# openSUSE Tumbleweed
su -c 'zypper ref && zypper dup --no-allow-vendor-change --no-recommends'

# openSUSE Leap
#su -c 'zypper ref && zypper up --no-recommends'

# Fedora
#su -c 'dnf --refresh upgrade'

# Ubuntu/Debian
#su -c 'apt update && apt upgrade'

# Arch
#su -c 'pacman -Syu'
