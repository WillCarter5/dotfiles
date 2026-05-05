#!/usr/bin/env bash

# Define the root dotfiles directory if not already set
export DOTFILES="$HOME/.dotfiles"

# 1. Load Environment Variables first
if [[ -f "$DOTFILES/shell/shared/env.sh" ]]; then
    source "$DOTFILES/shell/shared/env.sh"
fi

# 2. Load Functions
if [[ -f "$DOTFILES/shell/shared/functions.sh" ]]; then
    source "$DOTFILES/shell/shared/functions.sh"
fi

# 3. Load Aliases
if [[ -f "$DOTFILES/shell/shared/aliases.sh" ]]; then
    source "$DOTFILES/shell/shared/aliases.sh"
fi

# 4. Environment Overrides (The "Toggle" logic)
# This allows you to set USE_OMZ=false in ~/.local_settings
if [[ -f "$HOME/.local_settings" ]]; then
    source "$HOME/.local_settings"
fi
