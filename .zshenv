export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
export PATH="$PATH:$HOME/.cargo/bin"

export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="librewolf"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export SUDO_ASKPASS="$HOME/.local/bin/wmenupass"

export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
