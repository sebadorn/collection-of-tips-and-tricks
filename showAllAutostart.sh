#!/bin/bash

cd /etc/xdg/autostart/
sudo sed --in-place 's/NoDisplay=true/NoDisplay=false/g' *.desktop

cd ~

# Problem: Not all autostarting scripts are shown in gnome-session-properties.

# Fix: Change the config from "NoDisplay=true" to "NoDisplay=false".
