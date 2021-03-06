# ~/.bash_aliases

# dnf/yum
alias s='sudo'
alias yum='dnf' # d'oh
alias yi='sudo dnf install'
alias yu='sudo dnf --refresh upgrade'
alias yyu='sudo dnf -y upgrade'
alias yl='sudo dnf list'
alias ys='sudo dnf search'
alias yr='sudo dnf erase'
alias ye='sudo dnf erase'
alias yh='sudo dnf history'
alias yhu='sudo dns history undo'

# list files
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

# security
alias rm="rm -i"

# rpmbuild
alias mock='/usr/bin/mock'

alias cal='cal -m -3'
alias notes="vim $HOME/.notes/`date +%F`.md"
alias _blog="source $HOME/Develop/venvs/blog/bin/activate"

alias wtf="man"

alias cdpu="cd ~/Develop/gdc/puppet"
alias cdgd="cd ~/Develop/gdc/"

alias ..="cd .."
alias ...="cd ../.."

# vim:ts=4:sw=4
