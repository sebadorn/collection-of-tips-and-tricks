#!/bin/bash

cd /opt/google/chrome/locales/
sudo mv de.pak de.pak.xx
cd ~

# Problem: It's not possible to change the interface language of Chrome to
# something else than the OS language.

# Fix: Remove the used language pack from Chrome. It will default to english.

