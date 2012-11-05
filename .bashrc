PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [ -e /usr/share/git-core/git-completion.bash ]; then
	. /usr/share/git-core/git-completion.bash
fi

GITPS1SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bashcompletion ]; then
. /opt/local/etc/bashcompletion
fi

alias ls='ls -G'

green="\[\033[01;32m\]"
red="\[\033[01;33m\]"
reg="\[\033[0m\]"
export PS1="\h:$green\W:$red\$(__git_ps1)$green$ $reg"

export RAILS_ENV=production

