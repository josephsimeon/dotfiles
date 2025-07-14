#!/bin/bash
brew update
brew upgrade

brews=(
    neovim
    git
    gcc
    make
    cmake
    python3
    ninja
    dfu-util
)

casks=(
    gcc-arm-embedded
)

brew install "${brews[@]}"

brew install --cask "${casks[@]}"
