## Terminal notes

### Create MD5 hash

    echo -n "hash me" | md5sum

### Logout of session

    gnome-session-quit --force-logout

### Create audio noise

    play -t sl - synth '0:00:06' pinknoise band -n 1200 200 tremolo 20 .1 < /dev/zero

### ffmpeg collection

    ffmpeg -i input.mkv -vcodec copy -acodec aac -sameq output.mp4
    ffmpeg -i input.mp4 -vn -acodec libmp3lame -ab 192k -ar 44100 -ac 2 output.mp3
    ffmpeg -i input.mp3 (…) -acodec libvorbis output.ogg

Source: [catswhocode.com/blog/19-ffmpeg-commands-for-all-needs](http://www.catswhocode.com/blog/19-ffmpeg-commands-for-all-needs)

### Apply winetricks on a PlayOnLinux WINE installation

    env WINEPREFIX=~/.PlayOnLinux/wineprefix/<<NAME>>/ winetricks

### Disable Swap for all devices

    sudo swapoff -a

### MeshLab not importing PLY

    LC_NUMERIC=C meshlab

Depending on the setting for the locales, MeshLab may mix up points and commas in float values.

### Find out CPU cache size, level and type

    cat /sys/devices/system/cpu/cpu*/cache/index*/size
    cat /sys/devices/system/cpu/cpu*/cache/index*/level
    cat /sys/devices/system/cpu/cpu*/cache/index*/type

Source: [stackoverflow.com/a/1957576](http://stackoverflow.com/a/1957576)

### Rename many files

    rename 's/<regex>/<replacement>/<flags>' *.<file_ext>

With `-n` you can first make a test run to see the would-be result.  
Source: [tips.webdesign10.com/how-to-bulk-rename-files-in-linux-in-the-terminal](http://tips.webdesign10.com/how-to-bulk-rename-files-in-linux-in-the-terminal)

### Manually install fonts

Move the font files to `/usr/share/fonts` and then the sub-directory that fits the file extension, like `truetype`. Then call `fc-cache`.

### Prevent service from autostarting

    sudo update-rc.d -f <service> remove

Source: [askubuntu.com/questions/170640/how-to-disable-apache2-server-from-auto-starting-upon-boot-up](http://askubuntu.com/questions/170640/how-to-disable-apache2-server-from-auto-starting-upon-boot-up)

### Search installed packages

    dpkg -l | grep '<searchterm>'

Source: [superuser.com/a/191714](http://superuser.com/a/191714)

### Fix Google Chrome on Ubuntu 13.04

    sudo ln -sf /lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libudev.so.0

Source: [askubuntu.com/a/306268](http://askubuntu.com/a/306268)

### Rename all files to lowercase

    rename 'y/A-Z/a-z/' *

Source: [stackoverflow.com/a/8167105/915570](http://stackoverflow.com/a/8167105/915570)

### Login not working, bounces back to login screen (login loop)

    sudo chown $USER:$USER .Xauthority

Or just rename/delete it:

    mv .Xauthority .XauthorityBack
