# Path to your oh-my-zsh installation.
export ZSH=/home/kevino/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="jonathan"
ZSH_THEME="frisk"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(scala git gradle docker common-aliases zsh-autosuggestions)

# User configuration

export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64"
export PATH="$JAVA_HOME/bin:/opt/gradle-2.4/bin:/opt/wildfly-8.1.0.Final-as/bin:/opt/BeyondCompare/bin:/home/kevino/.gvm/vertx/current/bin:/home/kevino/.gvm/springboot/current/bin:/home/kevino/.gvm/lazybones/current/bin:/home/kevino/.gvm/jbake/current/bin:/home/kevino/.gvm/groovyserv/current/bin:/home/kevino/.gvm/groovy/current/bin:/home/kevino/.gvm/griffon/current/bin:/home/kevino/.gvm/grails/current/bin:/home/kevino/.gvm/glide/current/bin:/home/kevino/.gvm/gaiden/current/bin:/home/kevino/.gvm/crash/current/bin:/home/kevino/.gvm/asciidoctorj/current/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/opt/groovy-2.3.6/bin:/home/kevino/projects/courses/algs4/bin:/opt/hadoop-2.4.1/bin:/opt/hadoop-2.4.1/sbin:/opt/groovy-2.3.6/bin:/home/kevino/projects/courses/algs4/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
fpath=(~/.zsh/completion $fpath)
autoload -U compinit
compinit

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zcon="vim ~/.zshrc"
alias szcon="source ~/.zshrc"
alias vrc="vim ~/.vimrc"
alias svrc="source ~/.vimrc"
alias copy="xsel --clipboard"

alias port="sudo netstat -nlp"
alias desk="cd /home/kevino/.local/share/applications"

alias jcli="/home/kevino/programs/wildfly-10.0.0.Final/bin/jboss-cli.sh --connect"
alias jst="vim /home/kevino/programs/wildfly-10.0.0.Final/standalone/configuration/standalone.xml"

if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi

bindkey -v
bindkey '^Xh' _complete_help
bindkey jj vi-cmd-mode

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kcuu1]" up-line-or-beginning-search
bindkey "$terminfo[kcud1]" down-line-or-beginning-search

export ZSH_LEVEL
let "ZSH_LEVEL++"
print -Pn "\e]2;${ZSH_LEVEL}\a"

function zshexit_shelllevel() {
    let "ZSH_LEVEL--"
    print -Pn "\e]2;${ZSH_LEVEL}\a"
}
zshexit_functions+=(zshexit_shelllevel)

export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib/${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export ATLAS_HOME=/usr/share/atlassian-plugin-sdk-6.2.6

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export LEIN="$HOME/programs/lein"
export SCALA_HOME="/usr/share/scala"
export ACTIVATOR_HOME="/home/kevino/programs/activator-dist-1.3.10"
export NGROK="/home/kevino/programs/ngrok"
export EXERCISM="/home/kevino/programs/exercism"

export PATH="$PATH:$SCALA_HOME/bin:$ACTIVATOR_HOME/bin:$NGROK:$EXERCISM"

source $HOME/.bash_aliases
source $HOME/.sdkman/bin/sdkman-init.sh

source ~/.zshrc_local
