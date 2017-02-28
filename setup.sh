#!/bin/bash
# setup my development environment
# MUST BE RUN INSIDE THE REPO DIRECTORY
#
# sets up vim
# sets up tmux
# sets up pyenv + pyenv-virtualenv TODO
# 
# TODO
# figure out relative symbolic links

# vim
ln -s $PWD/vim $HOME/.vim
ln -s $PWD/vim/vimrc $HOME/.vimrc

# tmux
ln -s $PWD/tmux.conf $HOME/.tmux.conf

# pyenv
# git clone https://github.com/yyuu/pyenv.git ~/.pyenv
# echo 'export PYENV_ROOT=$HOME/.pyenv' >> ~/.bashrc
# echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
# echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# pyenv-virtualenv
# git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugsin/pyenv-virtualenv
# echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

