#! /bin/sh

DIR="$(cd "$(dirname "$0")" && pwd)"
mkdir -p ~/.config/nvim/lua/config
mkdir -p ~/.config/nvim/lua/core
mkdir -p ~/.config/nvim/lua/plugins
ln -s -f $DIR/nvim/init.lua $HOME/.config/nvim/
ln -s -f $DIR/nvim/lazy-lock.json $HOME/.config/nvim/
ln -s -f $DIR/nvim/lua/config/* $HOME/.config/nvim/lua/config/
ln -s -f $DIR/nvim/lua/core/* $HOME/.config/nvim/lua/core/
ln -s -f $DIR/nvim/lua/plugins/* $HOME/.config/nvim/lua/plugins/
