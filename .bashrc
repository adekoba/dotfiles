. ~/.bashrc-local

# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

complete -cf sudo
