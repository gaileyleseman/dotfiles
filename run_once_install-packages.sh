#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

sudo apt update
sudo apt install -y \
    zsh \
    vim \
    nano \
    htop \
    tree \
    bat \
    jq \
    rsync \
    tmux \
    fzf \
    ripgrep \
    fd-find \
    eza \
    zstd

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
curl -sSfL https://raw.githubusercontent.com/iffse/pay-respects/main/install.sh | sh

mkdir -p ~/.local/share/fonts

for variant in "Regular" "Bold" "Italic" "Bold Italic"; do
  curl -fsSL -o "$HOME/.local/share/fonts/MesloLGS NF ${variant}.ttf" \
    "https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20${variant// /%20}.ttf"
done

fc-cache -fv ~/.local/share/fonts