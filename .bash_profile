if [[ -e /usr/share/autojump/autojump.sh ]]; then
    . /usr/share/autojump/autojump.sh
fi

if [[ -e ~/.bash_aliases ]]; then
    . ~/.bash_aliases
fi

if [[ -e ~/.bash_aliases_local ]]; then
    . ~/.bash_aliases_local
fi
