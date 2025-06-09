#!/usr/bin/bash

######################

rm -rf ~/.config/nvim
rm -rf ~/.config/zsh
rm -rf ~/.config/kitty
rm -rf ~/.config/i3
rm -rf ~/.config/oh-my-posh.json

rm -rf ~/.oh-my-zsh
rm -rf ~/.clang-format
rm -rf ~/.fonts
rm -rf ~/.prettierrc.yaml
rm -rf ~/.ruff.toml
rm -rf ~/.vimrc
rm -rf ~/.zshenv

######################

mkdir -p ~/.config

ln -s ~/dotfiles/nvim ~/.config/
ln -s ~/dotfiles/zsh ~/.config/
ln -s ~/dotfiles/kitty ~/.config/
ln -s ~/dotfiles/i3 ~/.config/
ln -s ~/dotfiles/oh-my-posh.json ~/.config

ln -s ~/dotfiles/.clang-format ~/
ln -s ~/dotfiles/.oh-my-zsh ~/
ln -s ~/dotfiles/.fonts ~/
ln -s ~/dotfiles/.prettierrc.yaml ~/
ln -s ~/dotfiles/.ruff.toml ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.zshenv ~/
