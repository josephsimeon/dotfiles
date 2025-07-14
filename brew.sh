#!/bin/bash
brew update
brew upgrade

brews=(
    neovim
    git
    rustup # rustup install stable && rustup default stable && rustup update
    rust
    gcc
    arm-none-eabi-gcc
    make
    cmake
    python3
    ninja
    dfu-util
)

# casks=(
# )

brew install "${brews[@]}"

# brew install --cask "${casks[@]}"
