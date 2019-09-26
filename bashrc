# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el7_6.x86_64
export JRE_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.222.b10-0.el7_6.x86_64/jre
export ANT_HOME=/home/nmoran/.ant/apache-ant-1.10.7
export PATH=${JAVA_HOME}/bin:${JRE_HOME}/bin:${ANT_HOME}/bin:${PATH}
export PYTHONPATH=/home/nmoran/workspace/python/commons

# User specific aliases and functions
extract() {
    if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

# How did I live before these?????
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias py='python3.6'
alias pip='pip3.6'

# Misc alias for system stuff
alias home='cd ~'
alias root='cd /'
alias q='exit'
alias c='clear'
alias h='history'
alias cs='clear;ls'
alias p='cat'
alias sys='systemctl'

# Git alias
alias g='git'
alias st='git status'
alias com='git commit'
alias clone='git clone'
alias sth='git stash'
