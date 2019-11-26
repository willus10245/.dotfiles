#!/bin/bash
cd ~/.dotfiles/install

while read ext; do
  code --install-extension $ext
done < vscode-extensions.txt
