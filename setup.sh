# Note: This script is for a Debian-based distribution

if [ "$EUID" -eq 0 ]; then 
    echo "Please run this script as a normal user, not the root user"
    exit
fi

THIS_DIR="$( cd "$( dirname "$0" )" && pwd )"

# apt
sudo apt-get update

# additional packages
sudo apt-get install autojump tree zsh

# autojump
echo '. /usr/share/autojump/autojump.sh' >> $HOME/.bash_profile

# vim
echo "Setting up neobundle"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
echo "Symlinking minimal .vimrc"
ln -s $THIS_DIR/.vimrc-minimal $HOME/.vimrc
echo "Creating vim swap, undo, and backup folders"
mkdir -p $HOME/.vim/.cache/swap
mkdir -p $HOME/.vim/.cache/undo
mkdir -p $HOME/.vim/.cache/backup
mkdir -p $HOME/.vim/dict
echo "Symlinking node.dict"
ln -s $THIS_DIR/.vim/dict/node.dict $HOME/.vim/dict/node.dict

# bash aliases
echo "Symlinking .bash_aliases"
rm $HOME/.bash_aliases
ln -s $THIS_DIR/.bash_aliases $HOME/.bash_aliases
echo '. $HOME/.bash_aliases' >> $HOME/.bash_profile

# .gitconfig
echo "Appending to .gitconfig"
cat $THIS_DIR/.gitconfig >> $HOME/.gitconfig

# oh-my-zsh
curl -L http://install.ohmyz.sh | sh
echo "Symlinking custom.zsh"
rm $HOME/.oh-my-zsh/custom/custom.zsh
ln -s $THIS_DIR/.oh-my-zsh/custom/custom.zsh $HOME/.oh-my-zsh/custom/custom.zsh

# opp.zsh
echo "Symlinking opp.zsh"
ln -s $THIS_DIR/opp $HOME/opp
ln -s $THIS_DIR/opp.zsh $HOME/opp.zsh

# zsh
sudo chsh -s /bin/zsh `whoami`
