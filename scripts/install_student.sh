#!/usr/bin/env bash
DOTFILES="$HOME/dotfiles"

ln -sf "$DOTFILES/bash/bashrc.remote" "$HOME/.bashrc"
ln -sf "$DOTFILES/zsh/zshrc.minimal" "$HOME/.zshrc"
ln -sf "$DOTFILES/tmux/tmux_student.conf" "$HOME/.tmux.conf"
ln -sf "$DOTFILES/vim/vimrc" "$HOME/.vimrc"
