#!/bin/sh
if [[ -z $ZSH ]]; then
sudo dnf install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
