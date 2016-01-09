ZSH_THEME="dieter"

if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi

# For vi mode
# https://github.com/hchbaw/opp.zsh
if [ -f ~/opp.zsh ]; then
    bindkey -v
    source ~/opp.zsh
    source ~/opp/surround.zsh
    source ~/opp/textobj-between.zsh
fi

if which tmux > /dev/null 2>&1; then
   # if not inside a tmux session, and if no session is started, start a new session
   test -z "$TMUX" && (tmux attach || tmux new-session)
fi
