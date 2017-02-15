# .bashrc

set -o vi

# User specific aliases and functions

export EDITOR=vim

alias ll='ls -l -G'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mux='tmuxinator'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
 
PS1="$GREEN\u@\h$NO_COLOR:\W$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

function bgrep { 
  ag "$@" $(bundle show --paths) . 
} 
