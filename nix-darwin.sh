#! /bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"
mkdir -p $HOME/.config/nix-darwin
ln -s -f $DIR/nix-darwin/* $HOME/.config/nix-darwin
