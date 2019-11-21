#!/bin/bash

if [ ! -d "$HOME/.dotfiles" ]; then
  echo 'Cloning willus10245/.dotfiles'
  git clone git@github.com:willus10245/.dotfiles.git ~/.dotfiles
  cd ~/.dotfiles
fi

source ~/.dotfiles/install/everything.sh
