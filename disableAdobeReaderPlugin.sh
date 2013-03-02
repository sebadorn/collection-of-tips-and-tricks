#!/bin/bash

cd /usr/lib/mozilla/plugins/
sudo mv npwrapper.nppdf.so npwrapper.nppdf.so.xx
cd ~

# Problem: Starting Firefox creates a file "C:\ppdf32Log\debuglog.txt"
# with content like "NPP_GetValue is called" in the user directory
# (or wherever Firefox is started).

# Fix: Rename the file extension of the Adobe Reader plugin
# for Firefox so it won't be loaded. (Or just delete it.)

