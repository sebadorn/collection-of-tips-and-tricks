#!/bin/bash

# Firefox
cd /usr/lib/mozilla/plugins/
sudo mv npwrapper.nppdf.so npwrapper.nppdf.so.xx

# Everything else, but in my case especially Opera
cd /opt/Adobe/Reader9/Browser/intellinux/
sudo mv nppdf.so nppdf.so.xx

cd ~

# Problem: Starting Firefox or Opera creates a file "C:\ppdf32Log\debuglog.txt"
# with content like "NPP_GetValue is called" in the user directory
# (or wherever the browser is started).

# Fix: Rename the file extension of the Adobe Reader (browser)
# plugin so it won't be loaded. (Or just delete it.)

