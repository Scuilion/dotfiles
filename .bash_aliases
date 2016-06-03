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

alias ws1='ssh ws1-1-vl.dfwx'
alias ws2='ssh ws1-2-vl.dfwx'
alias wstest1='ssh wstest1-1-vl.dfwx'
alias wstest2='ssh wstest1-2-vl.dfwx'
alias wsdev1='ssh wsdev1-1-vl.dfwx'
alias wsdev2='ssh wsdev1-2-vl.dfwx'

alias s1='ssh wildfly2-1-vl.dfwx'
alias s2='ssh wildfly2-2-vl.dfwx'
alias stest1='ssh wildflytest2-1-vl.dfwx'
alias stest2='ssh wildflytest2-2-vl.dfwx'
alias sdev1='ssh wildflydev2-1-vl.dfwx'
alias sdev2='ssh wildflydev2-2-vl.dfwx'

alias l1='ssh wildfly3-1-vl.dfwx'
alias l2='ssh wildfly3-2-vl.dfwx'
alias ltest1='ssh wildflytest3-1-vl.dfwx'
alias ltest2='ssh wildflytest3-2-vl.dfwx'
alias ldev1='ssh wildflydev3-1-vl.dfwx'
alias ldev2='ssh wildflydev3-2-vl.dfwx'


