PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

. /usr/share/git-core/git-completion.bash

GITPS1SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bashcompletion ]; then
. /opt/local/etc/bashcompletion
fi

alias ls='ls -G'

green="\[\033[01;32m\]"
red="\[\033[01;33m\]"
reg="\[\033[0m\]"
export PS1="$green\w:$red\$(__git_ps1)$green$ $reg"
