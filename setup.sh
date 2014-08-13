# Note: This script is for a Debian-based distribution

THIS_DIR="$( cd "$( dirname "$0" )" && pwd )"

# apt
sudo apt-get update

# packages
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties ctags autojump tree

# autojump
echo '. /usr/share/autojump/autojump.sh' >> $HOME/.bash_profile

# vim
echo "Setting up neobundle"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
echo "Creating or replacing .vimrc"
cat $THIS_DIR/.vimrc > $HOME/.vimrc
echo "Creating vim swap, undo, and backup folders"
mkdir -p $HOME/.vim/.cache/swap
mkdir -p $HOME/.vim/.cache/undo
mkdir -p $HOME/.vim/.cache/backup

# bash aliases
echo "Appending to .bash_aliases"
cat $THIS_DIR/.bash_aliases >> $HOME/.bash_aliases
echo '. $HOME/.bash_aliases' >> $HOME/.bash_profile

# .gitconfig
echo "Appending to .gitconfig"
cat $THIS_DIR/.gitconfig >> $HOME/.gitconfig

# rbenv
git clone git://github.com/sstephenson/rbenv.git $HOME/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.bash_profile
echo 'eval "$(rbenv init -)"' >> $HOME/.bash_profile
exec $SHELL
git clone git://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> $HOME/.bash_profile
exec $SHELL

# ruby 2.1.2
CONFIGURE_OPTS="--disable-install-rdoc"
rbenv install -v 2.1.2
rbenv global 2.1.2
ruby -v

# .gemrc
echo "Creating or replacing .gemrc"
cat $THIS_DIR/.gemrc > $HOME/.gemrc

# bundler
gem install bundler -V

# rubocop
gem install rubocop -V
echo "Creating or replacing global rubocop settings"
cat $THIS_DIR/.rubocop.yml > $HOME/.rubocop.yml
