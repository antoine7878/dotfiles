#!/usr/bin/bash
# rm -rf ~/.config/nvim
# rm -rf ~/.local/share/nvim
# rm -rf ~/.local/state/nvim
# rm -rf ~/.cache/nvim

rm -rf ~/.ruff.toml
rm -rf ~/.config/nvim
rm -rf ~/.zshrc
rm -rf ~/.clang-format

ln -s ~/dotfiles/nvim ~/.config/
ln -s ~/dotfiles/.zshrc ~/
ln -s ~/dotfiles/.clang-format ~/
ln -s ~/dotfiles/.ruff.toml ~/

