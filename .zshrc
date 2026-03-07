HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
export EDITOR="vim"

zstyle :compinstall filename '/home/juani/.zshrc'

autoload -Uz compinit
autoload -U colors && colors
compinit

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Disable ctrl-s freezing
stty stop undef

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Adds lf that cds on exit
lfcd () {
    tmp="$(mktemp -uq)"
    trap 'rm -f $tmp >/dev/null 2>&1 && trap - HUP INT QUIT TERM PWR EXIT' HUP INT QUIT TERM PWR EXIT
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
ytm () {
    [ -z "$1" ] && echo "No argument supplied" && return;
    mpv --no-audio-display --volume=50 --ytdl-format=bestaudio "ytdl://ytsearch:$*"
}

bindkey -s '^o' '^ulfcd\n'

source <(fzf --zsh)
