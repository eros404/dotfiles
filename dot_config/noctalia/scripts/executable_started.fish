#!/usr/bin/env fish

set NOCTALIA_THEME_MODE $(noctalia msg theme-mode-get)

gsettings set org.gnome.desktop.interface color-scheme "prefer-$NOCTALIA_THEME_MODE"
noctalia msg wallpaper-set "$HOME/Pictures/background-$NOCTALIA_THEME_MODE.png"

