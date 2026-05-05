#!/usr/bin/env bash

DOTFILES="$HOME/.dotfiles"

# zsh config
ln -sf "$DOTFILES/shell/zsh/zshrc"  "$HOME/.zshrc"
ln -sf "$DOTFILES/shell/zsh/zshenv" "$HOME/.zshenv"

# Bash config
ln -sf "$DOTFILES/shell/bash/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/shell/bash/profile" "$HOME/.profile"

# Tool links
ln -sf "$DOTFILES/vim/vimrc" "$HOME/.vimrc"
ln -sf "$DOTFILES/tmux/tmux.conf" "$HOME/.tmux.conf" # Ensure filename matches folder

echo "Dotfiles installed."
