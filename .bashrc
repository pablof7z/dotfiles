PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

_gitps1 () 
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
. /usr/local/git/contrib/completion/git-completion.bash
fi
GITPS1SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bashcompletion ]; then
. /opt/local/etc/bashcompletion
fi

alias ls='ls -G'

green="\[\033[01;32m\]"
red="\[\033[01;33m\]"
reg="\[\033[0m\]"
export PS1="$green\w:$red\$(_gitps1)$green$ $reg"
