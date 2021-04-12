# `type ALIAS` shows what an alias is

alias sa="cat ~/.bash_aliases"
alias ea="vim ~/.bash_aliases"
alias sal="cat ~/.bash_aliases_local"
alias eal="vim ~/.bash_aliases_local"

function vmux() {
  local -r abducoSessionName="vmux1"
  abduco -e '^g' -A "$abducoSessionName" nvim -c terminal "$@"
}
alias vmuxdown="killall -v abduco"
alias tmux="vmux"
alias tmuxup="vmux"
alias tmuxadd="vmux"
alias tmuxaddon="vmux"
alias tmuxmirror="vmux"
alias tmuxmir="vmux"
alias tmuxns="vmux"
alias tmuxdown="vmuxdown"

alias vi="vim"
alias vu="vim -u NONE"

alias nv="nvim"
alias v="nv"

alias ev0="vim ~/dotfiles/.vimrc"
alias ev="nvim ~/dotfiles/.config/nvim/lua/plugins.lua"

alias eb="v ~/.bashrc"
alias ez="v ~/.zshrc"
alias eg="v ~/.gitconfig"
alias essh="v ~/.ssh/config"

alias l="ls -lhAtr --color=always"
alias ls="ls -lhA"
alias la="ls -lhA"
alias lo="ls -lhA"

alias lsdir="ls *"
alias ldir="ls -l *"

alias cd..="cd .."

alias rm="rm -v"

alias c="clear"
alias q="exit"

alias grep="grep -i --color=always -n"

alias chown="chown --preserve-root"
alias chmod="chmod --preserve-root"
alias chgrp="chgrp --preserve-root"

alias vd="vimdiff"
alias vimdif="vimdiff"
alias vimdif="vimdiff"

alias g="TZ=America/Los_Angeles git"
alias gg="TZ=America/Los_Angeles git"
alias qg="TZ=America/Los_Angeles git"
alias gq="TZ=America/Los_Angeles git"
alias gs="TZ=America/Los_Angeles git s"
alias gl="TZ=America/Los_Angeles git l"
alias gw="TZ=America/Los_Angeles git w"
alias ggrep="TZ=America/Los_Angeles git grep"
alias gpuom="TZ=America/Los_Angeles git push -u origin master"

alias svnl="svn log -v --diff | less"

alias dusd="du -sh ./* | gsort -h"
alias dusd2="du -s ./* |  sort -g"

alias ssh1="eval $(ssh-agent)"
alias ssh2="ssh-add"

alias oepn="open"

alias utc="date -u"
alias gmt="date -u"

alias killall='killall -v'

alias yaourt="yaourt --noconfirm"

# autojump
alias k="j"

alias t="tree    -ashFC -I '.git|node_modules'"
alias tre="tree  -ashFC -I '.git|node_modules'"
alias tree="tree -ashFC -I '.git|node_modules'"

alias tmux="tmux -2"
alias st="~/setup-tmux-windows.sh"

alias htpo='htop'

alias rsync="rsync --progress"

alias iptableslist="iptables -L -v -n"
alias iptablesnatlist="iptables -t nat -L -v -n"

alias netstatin="netstat -tulpen"
alias netstatout="netstat -tupen"

alias bi="bundle install"
alias be="bundle exec"

alias rspec="bundle exec rspec"
alias rake="bundle exec rake"

alias puma="bundle exec puma"
alias shotgun="bundle exec shotgun"
alias sgr="bundle exec shotgun -p 3000"
alias thin="bundle exec thin start -p 3000 -R config.ru -V"

alias ns="npm start"
alias ni="npm install --silent"
alias nis="npm install --silent --save"
alias nisd="npm install --silent --save-dev"
alias snig="sudo npm install --silent -g"

alias webpack="webpack --display-modules"

alias ag="ag --ignore-case --literal"
alias agl='function __agl() { ag $1 -l -c . | sort -t ":" -k 2 -g; unset -f __agl; }; __agl'

alias sift="sift -i -n --binary-skip --git"

alias unban='sudo fail2ban-client set sshd unbanip $1'
