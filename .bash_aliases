alias tmux='TERM=screen-256color-bce tmux'

alias cd..='cd ..'

#list
alias ls='ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'

#aptitude
alias sai='sudo aptitude install'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias ping='ping -c 5'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

alias fhere='find . -name '

alias mkdir='mkdir -p'

alias wget="wget -c"

alias sudo='sudo env PATH=$PATH'

mypath(){
    echo $PATH | tr ':' '\n' | awk '{print "["NR"]"$0}'
}

alias jd='java -jar /opt/jd-gui/jd-gui.jar'
