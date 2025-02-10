#!/bin/sh
sudo dnf install tilix
dconf load /com/gexperts/Tilix/ < $HOME/.config/tilix/tilix.dconf
