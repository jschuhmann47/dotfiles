HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

zstyle :compinstall filename '"$HOME"/.zshrc'

autoload -Uz compinit
autoload -U colors && colors
compinit

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Disable ctrl-s freezing
stty stop undef

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

source <(fzf --zsh)
