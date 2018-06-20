#DIRECTORIES

## Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias md='mkdir -p'
alias rd=rmdir
alias d='dirs -v | head -10'

## List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

#GIT
alias gcf='git config --list'

alias gcam='git commit -a -m'
alias gcmsg='git commit -m'

alias gcl='git clone --recursive'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gco='git checkout'

alias gcp='git cherry-pick'
alias gd='git diff'
alias gp='git push'
alias gst='git status'
