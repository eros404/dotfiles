#!/bin/sh

# Install ZSH
if [ -z "$ZSH" ]; then
  sudo dnf install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Starship
if ! which starship; then
  sudo dnf copr enable atim/starship
  sudo dnf install starship
fi

# Install lsd
if ! which lsd; then
  sudo dnf install lsd
  wget -P "$HOME/.config/lsd" https://raw.githubusercontent.com/catppuccin/lsd/refs/heads/main/themes/catppuccin-macchiato/colors.yaml
fi

# Install bat
if ! which bat; then
  sudo dnf install bat
  mkdir -p "$(bat --config-dir)/themes"
  wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Latte.tmTheme
  wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Frappe.tmTheme
  wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Macchiato.tmTheme
  wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme
  bat cache --build
fi
