#!/usr/bin/bash
# rm -rf ~/.config/nvim
# rm -rf ~/.local/share/nvim
# rm -rf ~/.local/state/nvim
# rm -rf ~/.cache/nvim

rm -rf ~/.config/nvim
rm -rf ~/.config/zsh

rm -rf ~/.ruff.toml
rm -rf ~/.zshrc
rm -rf ~/.clang-format
rm -rf ~/.zshenv


ln -s ~/dotfiles/nvim ~/.config/
ln -s ~/dotfiles/zsh ~/.config/

ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/.clang-format ~/
ln -s ~/dotfiles/.ruff.toml ~/
ln -s ~/dotfiles/.zshenv ~/
