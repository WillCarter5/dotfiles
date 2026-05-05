# Dotfiles

A minimal, layered dotfiles setup for Bash and Zsh with shared configuration, optional Oh My Zsh / Powerlevel10k support, and per-machine feature toggles.

---

# Design Philosophy

### Core ideas:
- One shared config layer for Bash + Zsh
- Shell-specific files only handle orchestration
- Optional features (OMZ, p10k) are toggleable
- Per-machine overrides without editing core dotfiles

---

# Structure

```
dotfiles/
├── shell/
│   ├── shared/
│   │   ├── env.sh
│   │   ├── aliases.sh
│   │   ├── functions.sh
│   │   └── ls_colors.sh
│   │
│   ├── bash/
│   │   └── bashrc
│   │
│   └── zsh/
│       ├── zshrc
│       └── zshenv
│
└── ~/.config/dotfiles/
    └── zsh.conf   # feature flags (created locally)
```

---

#  Installation

## 1. Clone repo

```sh
git clone https://github.com/WillCarter5/dotfiles ~/.dotfiles
```

---

## 2. Symlink shell configs

```sh
ln -sf ~/.dotfiles/shell/bash/bashrc ~/.bashrc
ln -sf ~/.dotfiles/shell/zsh/zshrc ~/.zshrc
ln -sf ~/.dotfiles/shell/zsh/zshenv ~/.zshenv
```

---

## 3. Create config directory

```sh
mkdir -p ~/.config/dotfiles
touch ~/.config/dotfiles/zsh.conf
```

---

# How it works

## Startup flow

### Bash
```
~/.bashrc
  → shared/env.sh
  → shared/aliases.sh
  → shared/functions.sh
```

### Zsh
```
~/.zshrc
  → shared/env.sh
  → shared/aliases.sh
  → shared/functions.sh
  → optional OMZ and p10k
```

---

# Feature toggles (`dotset`)

## Enable Oh My Zsh
```sh
dotset omz true
```

## Disable Oh My Zsh
```sh
dotset omz false
```

## Enable Powerlevel10k
```sh
dotset p10k true
```

## Disable Powerlevel10k
```sh
dotset p10k false
```

---

## Configuration file

```
~/.config/dotfiles/zsh.conf
```

Example:
```
USE_OMZ=true
USE_P10K=false
```

---

## Apply changes

```sh
exec zsh
```

---

# Shared layer

### env.sh
- PATH
- EDITOR
- PAGER

### aliases.sh
- git shortcuts
- ls helpers

### functions.sh
- dotset

---

# Local overrides

```
~/.zshrc.local
```

Used for:
- machine-specific PATH
- temporary overrides

---

# Example setups

## Minimal
```sh
dotset omz false
dotset p10k false
exec zsh
```

## Full
```sh
dotset omz true
dotset p10k true
exec zsh
```

---
