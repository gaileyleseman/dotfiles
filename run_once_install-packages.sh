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