THIS_DIR="$( cd "$( dirname "$0" )" && pwd )"

# apt
sudo apt-get update

# prerequisites
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties ctags

# .gemrc
cat $THIS_DIR/.gemrc > $HOME/.gemrc

# vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
cat $THIS_DIR/.vimrc > $HOME/.vimrc
mkdir $HOME/.vim/.cache/swap
mkdir $HOME/.vim/.cache/undo
mkdir $HOME/.vim/.cache/backup

# bash aliases
cat $THIS_DIR/.bash_aliases >> $HOME/.bash_aliases
echo '. $HOME/.bash_aliases' >> $HOME/.bashrc

# .gitconfig
cat $THIS_DIR/.gitconfig >> $HOME/.gitconfig

# rbenv and ruby
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.bashrc
echo 'eval "$(rbenv init -)"' >> $HOME/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> $HOME/.bashrc
exec $SHELL

rbenv install 2.1.2
rbenv global 2.1.2
ruby -v

# rubocop
cat $THIS_DIR/.rubocop.yml > $HOME/.rubocop.yml
gem install rubocop -V
