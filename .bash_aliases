# `type ALIAS` shows what an alias is

alias sa='cat ~/.bash_aliases'
alias ea='vim ~/.bash_aliases'

alias eg='vim ~/.gitconfig'
alias ev='vim ~/.vimrc'
alias eb='vim ~/.bashrc'
alias ez='vim ~/.zshrc'
alias essh='vim ~/.ssh/config'

alias l='ls -lhAtr --color=always'
alias ls='ls -lhA'
alias la='ls -lhA'
alias lo='ls -lhA'

alias lsdir='ls *'
alias ldir='ls -l *'

alias cd..='cd ..'

alias rm='rm -v'

alias c='clear'
alias q='exit'

alias grep='grep -i --color=always -n'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias v='vim'
alias vm='vim'
alias vi='vim'
alias vmi='vim'
alias bim='vim'
alias vbim='vim'
alias vims='vim'
alias cim='vim'
alias cg='vim'

alias vimdif='vimdiff'
alias vimdif='vimdiff'

alias g='git'
alias gg='git'
alias qg='git'
alias gq='git'
alias gs='git s'
alias gl='git l'
alias gw='git w'
alias ggrep='git grep'
alias gpuom='git push -u origin master'

alias dudir='du -h -d0'
alias dusubdirs='du -h -d1'
alias dusummary='du -h -L 1 . | sort -n -b'

alias ssh1='eval $(ssh-agent)'
alias ssh2='ssh-add'

alias oepn='open'

alias yaourt='yaourt --noconfirm'

# autojump
alias k='j'

alias t='tree -a -I ".git" -C'
alias tre='tree -a -I ".git" -C'
alias tree='tree -a -I ".git" -C'
alias treejs='tree -I ".git" -P "*.js" --prune -C'

alias tmux='tmux -2'

alias iptableslist='iptables -L -v -n'
alias iptablesnatlist='iptables -t nat -L -v -n'

alias netstatin='netstat -tulpen'
alias netstatout='netstat -tupen'

alias bi='bundle install'
alias be='bundle exec'

alias rspec='bundle exec rspec'
alias rake='bundle exec rake'

alias puma='bundle exec puma'
alias shotgun='bundle exec shotgun'
alias sgr='bundle exec shotgun -p 3000'
alias thin='bundle exec thin start -p 3000 -R config.ru -V'

alias ns='npm start'
