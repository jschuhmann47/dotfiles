# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e # TODO change it to -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/juani/.zshrc'

autoload -Uz compinit
# autoload -U colors && colors
compinit
# End of lines added by compinstall

# Disable ctrl-s freezing
stty stop undef

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias lf='lfub'
alias lfub='/home/juani/.scripts/lf/lfub'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias dnd='cd /home/juani/Documents/dnd_landtmann/pages'

source <(fzf --zsh)
eval "$(starship init zsh)"
