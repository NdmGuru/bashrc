# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias checkin='puppet agent --test'

user=`whoami`

if [ $user == 'root' ]; then
        PS1='[\[\033[03;31m\]\t \u@\h:\[\033[01m\]\w\[\033[00m\] ] # '
else
        PS1='[\[\033[02;32m\]\t \u@\h:\[\033[01m\]\w\[\033[00m\] ] # '
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
