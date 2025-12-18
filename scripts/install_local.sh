#!/usr/bin/env bash
DOTFILES="$HOME/dotfiles"

ln -sf "$DOTFILES/bash/bashrc.local"    "$HOME/.bashrc"
ln -sf "$DOTFILES/zsh/zshrc.omz"        "$HOME/.zshrc"
ln -sf "$DOTFILES/tmux/tmux_local.conf" "$HOME/.tmux.conf"
ln -sf "$DOTFILES/vim/vimrc"            "$HOME/.vimrc"
ln -sf "$DOTFILES/ssh/config"           "$HOME/.ssh/config"
