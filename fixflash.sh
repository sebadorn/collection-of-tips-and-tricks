#!/bin/bash

cd /usr/lib/flashplugin-installer
sudo perl -pi.bak -e 's/libvdpau/lixvdpau/g' libflashplayer.so

# Problem: If hardware accelartion is enabled,
# YouTube videos that use Flash are blueish.

# Fix: Something something wrong or broken lib, remove it.
# Has to be done after every update of the flashplugin-installer.

