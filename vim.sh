#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

ln -s -f $DIR/vim/vimrc $HOME/.vimrc
