mkcd() {
  mkdir -p "$1" && cd "$1"
}

dotset() {
    # Check for arguments
    if [ "$#" -eq 0 ]; then
        echo "usage: dotset {omz|p10k} {true|false}"
    fi

    # Check if dotfiles directory exists
    mkdir -p "$HOME/.config/dotfiles"

    case "$1" in
        omz)
            echo "USE_OMZ=$2" >> "$HOME/.config/dotfiles/zsh.conf"
            ;;
        p10k)
            echo "USE_P10K=$2" >> "$HOME/.config/dotfiles/zsh.conf"
            ;;
        *)
            echo "Unknown option: $1"
            echo "usage: dotset {omz|p10k} {true|false}"
            ;;
    esac
}
