# General Aliases
alias l='ls -GFh'
alias ls='ls -GFh'
alias la='ls -A'
alias ll='ls -l'
alias lla='ls -la'

# Git Aliases
LOG="git log --graph --decorate --format=format:'%C(yellow)%h%C(reset) - %C(bold red)%d%C(reset) %s %C(bold blue)(%ar)%C(reset)'"
alias gs='git status'
alias gl="$LOG -n 7"
alias gll="$LOG"
alias gdiff='git diff'
alias gc='git checkout'
alias gb='git branch'
alias gm='git commit -m'
alias gmerge='git merge'
alias pull='git pull'
alias push='git push'

# Docker Aliases
alias d='docker'
alias dc='docker-compose'
alias dcp='docker cp'
alias dex='docker exec -it'
alias dls='docker image ls'
alias dps='docker ps'
alias da='docker attach'
alias dprune='docker system prune'

