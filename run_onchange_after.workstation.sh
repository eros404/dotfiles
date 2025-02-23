#!/bin/sh

# Install Tilix
if ! which tilix; then
  sudo dnf install tilix
  dconf load /com/gexperts/Tilix/ < $HOME/.config/tilix/tilix.dconf
  fc-cache
fi
