#DIRECTORIES

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias mkdir='mkdir -pv'
alias rd=rmdir
alias d='dirs -v | head -10'

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Quick edit config
alias zcon="vim ~/.zshrc"
alias szcon="source ~/.zshrc"
alias vcon="vim ~/.vimrc"
alias svcon="source ~/.vimrc"

#GIT
alias gcf='git config --list'

alias gcam='git commit -a -m'
alias gcmsg='git commit -m'

alias gcl='git clone --recursive'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gco='git checkout'

alias gcp='git cherry-pick'
alias gd='git diff -w .'
alias gp='git push'
alias gst='git status'

#GREP
alias -g G='| grep -i'
alias grep='grep --exclude-dir={node_modules,dist,target,build,vendor,.git,.angular} --color=auto'

alias fp='ps aux | grep'

#HISTORY
alias h='history'
alias hg='history | grep '

#NETWORK
alias ping='ping -c 3'
alias fastping='ping -c 100 -s.2'
alias port="sudo netstat -nlp"

#TEXT
alias copy="xsel --clipboard"
alias xclip="xclip -selection c"

#PROTECTION
# Parenting changing perms on / #
#alias chown='chown --preserve-root'
#alias chmod='chmod --preserve-root'
#alias chgrp='chgrp --preserve-root'

# shortcut to desktop files
alias desk="cd /home/kevino/.local/share/applications"

alias bat="batcat"

alias sp="stack_print"
