# "type ALIAS" tells you what an existing command is aliased to
#
# Example:
#
# Executing: type ls
# Outputs:   ls is an alias for ls -lhAtr --color=auto
alias ea='vim ~/.bash_aliases'
alias eg='vim ~/.gitconfig'
alias c='clear'
alias q='exit'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias ls='ls -lhAtr'
alias l='ls -lhAtr'
# git
alias g='git'
alias gs='git status'
alias gl='git log'
# make
alias m='make'
alias mc='make clean'
# ssh
alias ssh1='eval $(ssh-agent)'
alias ssh2='ssh-add'
# tree
alias tree='tree -a -I .git -C'
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
