#!/usr/bin/bash
ln -s ~/dotfiles/nvim ~/.config/
ln -s ~/dotfiles/.zshrc ~/

python3 -m pip install --upgrade pip setuptools

pipx install nodejs
pipx install npm
