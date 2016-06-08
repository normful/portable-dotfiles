# Note: This idempotent script is for a Debian-based distribution 
#       and it assumes that the git package is already installed

if [[ "$EUID" -eq 0 ]]; then 
    echo "Please run this script as a normal user, not the root user"
    exit
fi

THIS_DIR="$( cd "$( dirname "$0" )" && pwd )"

NOW=$(date +%s)
TWO_MONTHS_AGO=$((NOW - 5270400))
LAST_APT_UPDATE=$(stat -c %Y /var/cache/apt/)
if (( $LAST_APT_UPDATE < $TWO_MONTHS_AGO )); then
    echo "Running sudo apt-get update because it's been more than 2 months"
    sudo apt-get update
fi

# Install packages if they aren't already
dpkg -s git      2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install git
dpkg -s htop     2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install vim
dpkg -s curl     2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install curl
dpkg -s autojump 2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install autojump
dpkg -s tree     2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install tree     
dpkg -s zsh      2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install zsh
dpkg -s tmux     2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install tmux
dpkg -s htop     2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install htop
dpkg -s htop     2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install ncdu
dpkg -s htop     2>/dev/null >/dev/null || sudo apt-get --no-install-recommends --yes install silversearcher-ag

mkdir -p $HOME/bin/

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    SIFT_VERSION=sift_0.8.0_linux_amd64
    if [[ ! -e $HOME/$SIFT_VERSION ]]; then
        echo "Setting up sift"
        wget https://sift-tool.org/downloads/sift/$SIFT_VERSION.tar.gz -P $HOME
        tar -xzf $HOME/$SIFT_VERSION.tar.gz
        ln -s -f $HOME/$SIFT_VERSION/sift $HOME/bin/sift
        rm -f $HOME/$SIFT_VERSION.tar.gz
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    SIFT_VERSION=sift_0.8.0_darwin_amd64
    if [[ ! -e $HOME/$SIFT_VERSION ]]; then
        echo "Setting up sift"
        wget https://sift-tool.org/downloads/sift/$SIFT_VERSION.zip -P $HOME
        unzip $HOME/$SIFT_VERSION.zip
        ln -s -f $HOME/$SIFT_VERSION/sift $HOME/bin/sift
        rm -f $HOME/$SIFT_VERSION.zip
    fi
fi

echo "Setting up ~/bin/pdu -- mnemonic: portable-dotfiles update"
ln -s -f $THIS_DIR/bin/pdu $HOME/bin/pdu

echo "Setting up .bash_profile"
ln -s -f $THIS_DIR/.bash_profile $HOME/.bash_profile

echo "Setting up .tmux.conf"
ln -s -f $THIS_DIR/.tmux.conf $HOME/.tmux.conf

if [[ ! -e $HOME/.vim/bundle/neobundle.vim ]]; then
    echo "Setting up neobundle"
    curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi

echo "Setting up a minimal .vimrc"
ln -s -f $THIS_DIR/.vimrc-minimal $HOME/.vimrc

echo "Setting up vim swap, undo, and backup folders"
mkdir -p $HOME/.vim/.cache/swap
mkdir -p $HOME/.vim/.cache/undo
mkdir -p $HOME/.vim/.cache/backup
mkdir -p $HOME/.vim/dict
sudo chown $USER -R $HOME/.vim

echo "Setting up node.dict"
ln -s -f $THIS_DIR/.vim/dict/node.dict $HOME/.vim/dict/node.dict

echo "Setting up .bash_aliases"
ln -s -f $THIS_DIR/.bash_aliases $HOME/.bash_aliases

echo "Setting up a general base .gitconfig"
ln -s -f $THIS_DIR/.gitconfig $HOME/.gitconfig

if [[ $USER == "norman" ]]; then
    sudo mkdir -p $HOME/.config/git
    sudo chown $USER -R $HOME/.config
    echo "Setting up Norman's personalized .gitconfig additions"
    ln -s -f $THIS_DIR/.config/git/config $HOME/.config/git/config
fi

if [[ ! -e $HOME/.oh-my-zsh ]]; then
    echo "Setting up oh-my-zsh"
    curl -L http://install.ohmyz.sh | sh
fi

echo "Setting up custom.zsh"
rm -f                                           $HOME/.oh-my-zsh/custom/custom.zsh
ln -s -f $THIS_DIR/.oh-my-zsh/custom/custom.zsh $HOME/.oh-my-zsh/custom/custom.zsh

echo "Setting up opp.zsh"
rm -rf $HOME/opp
mkdir  $HOME/opp
ln -s -f $THIS_DIR/opp.zsh                 $HOME/opp.zsh
ln -s -f $THIS_DIR/opp/surround.zsh        $HOME/opp/surround.zsh
ln -s -f $THIS_DIR/opp/textobj-between.zsh $HOME/opp/textobj-between.zsh

if [ ! -n "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
    echo "Changing shell to zsh"
    chsh -s /bin/zsh
fi
