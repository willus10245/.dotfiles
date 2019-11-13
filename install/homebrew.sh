#!/bin/bash
cd ~/.dotfiles

printf "\nHomebrew\n"
echo "------------------------------"

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing homebrew packages"

if [ ! "$(brew ls --versions autoconf)" ]; then
  echo "Installing autoconf"
  brew install autoconf
fi

if [ ! "$(brew ls --versions coreutils)" ]; then
  echo "Installing coreutils"
  brew install coreutils
fi

if [ ! "$(brew ls --versions gcc)" ]; then
  echo "Installing gcc"
  brew install gcc
fi

if [ ! "$(brew ls --versions gpg)" ]; then
  echo "Installing gpg"
  brew install gpg
fi

if [ ! "$(brew ls --versions neovim)" ]; then
  echo "Installing neovim"
  brew install neovim
fi

if [ ! "$(brew ls --versions ranger)" ]; then
  echo "Installing ranger"
  brew install ranger
fi

if [ ! "$(brew ls --versions skhd)" ]; then
  echo "Installing skhd"
  brew tap koekeishiya/formulae
  brew install skhd
fi

if [ ! "$(brew ls --versions yabai)" ]; then
  echo "Installing yabai"
  brew tap koekeishiya/formulae
  brew install yabai
fi

if [ ! "$(brew ls --versions zathura)" ]; then
  echo "Installing zathura"
  brew tap zegervdv/zathura
  brew install zathura
  brew install zathura-pdf-poppler
fi
