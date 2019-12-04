#!/bin/bash
cd ~/.dotfiles

printf "\n\nInstalling Everything\n"
echo "=============================="

if [ "$(uname)" == "Darwin" ]; then

  # source install/osx_settings.sh

  source install/homebrew.sh
  source install/homebrew_cask.sh

  source install/symlinks.sh

  source install/scripts.sh

  source install/asdf.sh

  source install/vim.sh

  source install/vscode-extensions.sh

else

  echo 'You are not running OSX.  Please visit ~/.dotfiles/install/ and manually run the necessary install scripts.'

fi
