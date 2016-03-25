ZSH_THEME="dieter"

if [[ -e ~/.bash_profile ]]; then
    . ~/.bash_profile > /dev/null
 fi

if [[ -e ~/.bash_aliases ]]; then
    . ~/.bash_aliases > /dev/null
fi

if [[ -e ~/.bash_aliases_local ]]; then
    . ~/.bash_aliases_local > /dev/null
fi

# For vi mode https://github.com/hchbaw/opp.zsh
if [[ -e ~/opp.zsh ]]; then
    bindkey -v
    source ~/opp.zsh > /dev/null
    source ~/opp/surround.zsh > /dev/null
    source ~/opp/textobj-between.zsh > /dev/null
fi

if which tmux > /dev/null 2>&1; then
   # if not inside a tmux session, and if no session is started, start a new session
   test -z "$TMUX" && (tmux attach || tmux new-session)
fi
