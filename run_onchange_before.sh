#!/bin/sh

# Install Git
if ! which git; then
  sudo dnf install -y git
fi

# Install ZSH
if [ -z "$ZSH" ]; then
  sudo dnf install -y zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
