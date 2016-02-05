if [[ -d "/usr/bin" ]]; then
    export PATH="/usr/bin:$PATH"
fi

if [[ -d "/bin" ]]; then
    export PATH="/bin:$PATH"
fi

if [[ -d "/opt/local/sbin" ]]; then
    export PATH="/opt/local/sbin:$PATH"
fi

if [[ -d "/usr/sbin" ]]; then
    export PATH="/usr/sbin:$PATH"
fi

if [[ -d "/sbin" ]]; then
    export PATH="/sbin:$PATH"
fi

if [[ -d "/usr/local/bin" ]]; then
    export PATH="/usr/local/bin:$PATH"
fi

if [[ -d "/usr/local/sbin" ]]; then
    export PATH="/usr/local/sbin:$PATH"
fi

if [[ -d "$HOME/bin" ]]; then
    export PATH="$HOME/bin:$PATH"
fi

if [[ -e ~/.bash_aliases ]]; then
    . ~/.bash_aliases
fi

if [[ -e ~/.bash_aliases_local ]]; then
    . ~/.bash_aliases_local
fi

if [[ -e /usr/share/autojump/autojump.sh ]]; then
    . /usr/share/autojump/autojump.sh
fi
