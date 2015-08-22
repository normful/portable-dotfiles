# "type ALIAS" tells you what an existing command is aliased to
#
# Example:
#
# Executing: type ls
# Outputs:   ls is an alias for ls -lhAtr --color=auto
alias sa='cat ~/.bash_aliases'
alias ea='vim ~/.bash_aliases'
alias eg='vim ~/.gitconfig'
alias ev='vim ~/.vimrc'
alias eb='vim ~/.bashrc'
alias ez='vim ~/.zshrc'
alias c='clear'
alias q='exit'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias ls='ls -lhAtr --color=always'
alias l='ls -lhAtr --color=always'
# vim
alias v='vim'
alias vm='vim'
alias vi='vim'
alias vmi='vim'
alias vbim='vim'
alias vims='vim'
alias cim='vim'
# grep
alias grep='grep --color=always -n'
alias grepcontext='grep --color=always -A7 -B7 -n'
# git
alias g='git'
alias gs='git status'
alias gl='git log'
# tmux
alias tmux='tmux -2'
# ssh
alias ssh1='eval $(ssh-agent)'
alias ssh2='ssh-add'
# tree
alias tree='tree -a -I ".git" -C'
alias treejs='tree -I ".git" -P "*.js" --prune -C'
# bundle
alias bi='bundle install'
alias be='bundle exec'
# rspec
alias rspec='bundle exec rspec'
# rake
alias rake='bundle exec rake'
alias r='bundle exec rake'
# shotgun
alias shotgun='bundle exec shotgun'
alias sgr='bundle exec shotgun -p 3000'
# thin
alias thin='bundle exec thin start -p 3000 -R config.ru -V'
# iptables
alias iptableslist='iptables -L -v -n'
alias iptablesnatlist='iptables -t nat -L -v -n'
