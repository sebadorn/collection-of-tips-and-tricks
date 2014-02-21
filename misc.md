## Miscellaneous notes

### PhotoShop CS4 needs the following packages in WINE

    msxml6 gdiplus gecko vcrun2005 ie6

### Conky and Gnome Shell

In .conkyrc replace `own_window_type override` with

    own_window_type normal
    own_window_argb_visual yes

### Improve font rendering (for example of Calibri)

If it doesn't exist, create `~/.config/fontconfig/fonts.conf`. Content:

    <fontconfig>
        <match target="font">
            <edit mode="assign" name="embeddedbitmap">
                <bool>false</bool>
             </edit>
        </match>
        <dir>~/.fonts</dir>
    </fontconfig>

Source: [cbalnuweit.de/?p=54](http://cbalnuweit.de/?p=54)

### Use amazon's .amz files for downloads

    clamz *.amz

Downloads the songs into the current directory.

### GNOME 3: Change desktop background zoom level etc.

The option can be found under `org.gnome.desktop.background.picture-options` (use `dconf-editor`).
