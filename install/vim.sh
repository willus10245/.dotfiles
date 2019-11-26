#!/bin/bash
cd ~/.dotfiles

printf "\nVim\n"
echo "------------------------------"

if [ ! -e ~/.config/nvim/bundle ]; then
  mkdir -p ~/.config/nvim/bundle
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
fi

echo "Installing vim plugins"
nvim +PlugInstall +qall #&> /dev/null
