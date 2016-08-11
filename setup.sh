#!/bin/bash
# setup my development environment
#
# sets up vim
# sets up tmux
# sets up pyenv + pyenv-virtualenv

# set install directory
# ~ by default
INSTALL_DIR=~
if [ ! -z "$1" ]
then
    INSTALL_DIR=$1
fi

# set config file
# ~/.bashrc by default
#PROFILE=~/.bashrc
PROFILE=$INSTALL_DIR/.bashrc
if [ ! -z "$2" ]
then
    PROFILE=$INSTALL_DIR/$2
fi

# set repo directory
# ~/.denv by default
#REPO_DIR=~/.denv
REPO_DIR=$INSTALL_DIR/.denv
if [ ! -z "$3" ]
then
    REPO_DIR=$INSTALL_DIR/$3
fi

echo "INSTALL_DIR: $INSTALL_DIR"
echo "    PROFILE: $PROFILE"
echo "   REPO_DIR: $REPO_DIR"
echo

# clone the repo
echo "cloning repository..."
git clone https://github.com/c0lon/denv $REPO_DIR
echo "done"
echo

# setup vim
echo "setting up vim..."
mkdir $INSTALL_DIR/.vim
mkdir $INSTALL_DIR/.vim/autoload
mkdir $INSTALL_DIR/.vim/bundle
curl -LSso $INSTALL_DIR/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp $REPO_DIR/vimrc $INSTALL_DIR/.vimrc
git clone https://github.com/scrooloose/nerdtree.git $INSTALL_DIR/.vim/bundle/nerdtree
echo "done"
echo

# setup tmux
echo "setting up tmux..."
cp $REPO_DIR/tmux.conf $INSTALL_DIR/.tmux.conf
echo "done"
echo

# setup pyenv
echo "setting up pyenv..."
PYENV_DIR=$INSTALL_DIR/.pyenv
git clone https://github.com/yyuu/pyenv.git $PYENV_DIR
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $PROFILE
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $PROFILE
echo 'eval "$(pyenv init -)"' >> $PROFILE
echo

# setup pyenv-virtualenv
git clone https://github.com/yyuu/pyenv-virtualenv.git $PYENV_DIR/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> $PROFILE
echo "done"
echo

echo "cleaning up..."
rm -rf $REPO_DIR
echo "done"
echo

# apply changes
exec $SHELL
reset

