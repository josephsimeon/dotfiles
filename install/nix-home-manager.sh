#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p $HOME/.config/nix
cp $DIR/nix/* $HOME/.config/nix

mkdir -p $HOME/.config/home-manager
cp $DIR/home-manager/* $HOME/.config/home-manager

