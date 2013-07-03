#!/bin/bash

cd /opt/google/chrome/
sudo sed --in-place 's;exec -a;cd /tmp\nexec -a;g' google-chrome
cd ~

# Problem: Starting Google Chrome creates a file "libpeerconnection.log" in the personal home directory.

# Fix: In the startup script for Google Chrome, change the directory to somewhere else, like "/tmp".

