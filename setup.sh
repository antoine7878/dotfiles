#!/usr/bin/bash

######################

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

rm -rf ~/.config/nvim
rm -rf ~/.config/zsh

rm -rf ~/.clang-format
rm -rf ~/.fonts
rm -rf ~/.p10k.zsh
# rm -rf ~/powerlevel10k
rm -rf ~/.prettierrc.yaml
rm -rf ~/.ruff.toml
rm -rf ~/.vimrc
rm -rf ~/.zshenv

######################

ln -s ~/dotfiles/nvim ~/.config/
ln -s ~/dotfiles/zsh ~/.config/

ln -s ~/dotfiles/.clang-format ~/
ln -s ~/dotfiles/.fonts ~/
ln -s ~/dotfiles/.p10k.zsh ~/
# ln -s ~/dotfiles/powerlevel10k ~/
ln -s ~/dotfiles/.prettierrc.yaml ~/
ln -s ~/dotfiles/.ruff.toml ~/
ln -s ~/dotfiles/.vimrc ~/
ln -s ~/dotfiles/.zshenv ~/
