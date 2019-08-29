#!/bin/bash
cd ~/repos/dotfiles

printf "\nHomebrew-Cask\n"
echo "------------------------------"

echo "Installing homebrew casks"

if [ ! "$(brew cask ls | grep alfred)" ]; then
  echo "Installing alfred"
  brew cask install alfred
fi

if [ ! "$(brew cask ls | grep dash)" ]; then
  echo "Installing dash"
  brew cask install dash
fi

if [ ! "$(brew cask ls | grep google-chrome)" ]; then
  echo "Installing google-chrome"
  brew cask install google-chrome
fi

if [ ! "$(brew cask ls | grep firefox-developer-edition)" ]; then
  echo "Installing firefox-developer-edition"
  brew cask install firefox-developer-edition
fi

if [ ! "$(brew cask ls | grep insomnia)" ]; then
  echo "Installing insomnia"
  brew cask install insomnia
fi

if [ ! "$(brew cask ls | grep kitty)" ]; then
  echo "Installing kitty"
  brew cask install kitty
fi

if [ ! "$(brew cask ls | grep visual-studio-code)" ]; then
  echo "Installing visual-studio-code"
  brew cask install visual-studio-code
fi
