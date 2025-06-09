#! /bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"
mkdir -p $HOME/.config/nix-darwin
cp $DIR/nix-darwin/* $HOME/.config/nix-darwin
