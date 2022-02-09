#!/bin/bash
cd ~/.dotfiles

printf "\nasdf\n"
echo "------------------------------"

if test ! $(which asdf); then
  echo "Installing asdf"
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
fi

source ~/.zprofile

if [ ! "$(asdf plugin-list | grep bazel)" ]; then
  echo "Installing bazel plugin"
  asdf plugin-add bazel
fi

if [ ! "$(asdf plugin-list | grep direnv)" ]; then
  echo "Installing direnv plugin"
  asdf plugin-add direnv
fi

if [ ! "$(asdf plugin-list | grep dotnet-core)" ]; then
  echo "Installing dotnet-core plugin"
  asdf plugin-add dotnet-core
fi

if [ ! "$(asdf plugin-list | grep elixir)" ]; then
  echo "Installing elixir plugin"
  asdf plugin-add elixir
fi

if [ ! "$(asdf plugin-list | grep erlang)" ]; then
  echo "Installing erlang plugin"
  asdf plugin-add erlang
fi

if [ ! "$(asdf plugin-list | grep gleam)" ]; then
  echo "Installing gleam plugin"
  asdf plugin-add gleam
fi

if [ ! "$(asdf plugin-list | grep julia)" ]; then
  echo "Installing julia plugin"
  asdf plugin-add julia
fi

if [ ! "$(asdf plugin-list | grep nodejs)" ]; then
  echo "Installing node plugin"
  asdf plugin-add nodejs
  bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
fi

if [ ! "$(asdf plugin-list | grep python)" ]; then
  echo "Installing python plugin"
  asdf plugin-add python
fi

if [ ! "$(asdf plugin-list | grep rebar)" ]; then
  echo "Installing rebar plugin"
  asdf plugin-add rebar
fi

if [ ! "$(asdf plugin-list | grep ruby)" ]; then
  echo "Installing ruby plugin"
  asdf plugin-add ruby
fi

if [ ! "$(asdf plugin-list | grep rust)" ]; then
  echo "Installing rust plugin"
  asdf plugin-add rust
fi

if [ ! "$(asdf plugin-list | grep yarn)" ]; then
  echo "Installing yarn plugin"
  asdf plugin-add yarn
fi

echo "Installing asdf package global versions"
asdf install

echo "Enabling python for neovim"
pip install --user neovim
