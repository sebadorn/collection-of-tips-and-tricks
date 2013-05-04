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

### PhotoShop CS4 needs the following packages in WINE

    msxml6 gdiplus gecko vcrun2005 ie6

### Disable Swap for all devices

    sudo swapoff -a

### MeshLab not importing PLY

    LC_NUMERIC=C meshlab

Depending on the setting for the locales, MeshLab may mix up points and commas in float values.
