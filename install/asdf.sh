#!/bin/bash
cd ~/.dotfiles

printf "\nasdf\n"
echo "------------------------------"

if test ! $(which asdf); then
  echo "Installing asdf"
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4
fi

source ~/.bash_profile

if [ ! "$(asdf plugin-list | grep elixir)" ]; then
  echo "Installing elixir plugin"
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
fi

if [ ! "$(asdf plugin-list | grep elm)" ]; then
  echo "Installing elm plugin"
  asdf plugin-add elm https://github.com/vic/asdf-elm.git
fi

if [ ! "$(asdf plugin-list | grep erlang)" ]; then
  echo "Installing erlang plugin"
  asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
fi

if [ ! "$(asdf plugin-list | grep nodejs)" ]; then
  echo "Installing node plugin"
  asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
fi

if [ ! "$(asdf plugin-list | grep python)" ]; then
  echo "Installing python plugin"
  asdf plugin-add python https://github.com/tuvistavie/asdf-python.git
fi

if [ ! "$(asdf plugin-list | grep ruby)" ]; then
  echo "Installing ruby plugin"
  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
fi

if [ ! "$(asdf plugin-list | grep rust)" ]; then
  echo "Installing rust plugin"
  asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
fi

if [ ! "$(asdf plugin-list | grep yarn)" ]; then
  echo "Installing yarn plugin"
  asdf plugin-add yarn https://github.com/twuni/asdf-yarn.git
fi

echo "Installing asdf package global versions"
asdf install

echo "Enabling python for neovim"
pip install --user neovim
