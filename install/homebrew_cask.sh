#!/bin/bash
cd ~/.dotfiles

printf "\nHomebrew-Cask\n"
echo "------------------------------"

echo "Installing homebrew casks"

if [ ! "$(brew cask ls | grep alacritty)" ]; then
  echo "Installing alacritty"
  brew cask install alacritty
fi

if [ ! "$(brew cask ls | grep alfred)" ]; then
  echo "Installing alfred"
  brew cask install alfred
fi

if [ ! "$(brew cask ls | grep dash)" ]; then
  echo "Installing dash"
  brew cask install dash
fi

if [ ! "$(brew cask ls | grep docker)" ]; then
  echo "Installing docker"
  brew cask install docker
fi

if [ ! "$(brew cask ls | grep google-chrome)" ]; then
  echo "Installing google-chrome"
  brew cask install google-chrome
fi

if [ ! "$(brew cask ls | grep firefox-developer-edition)" ]; then
  echo "Installing firefox-developer-edition"
  brew tap homebrew/cask-versions
  brew cask install firefox-developer-edition
fi

if [ ! "$(brew cask ls | grep insomnia)" ]; then
  echo "Installing insomnia"
  brew cask install insomnia
fi

if [ ! "$(brew cask ls | grep spotify)" ]; then
  echo "Installing spotify"
  brew cask install spotify
fi

if [ ! "$(brew cask ls | grep visual-studio-code)" ]; then
  echo "Installing visual-studio-code"
  brew cask install visual-studio-code
fi
