#!/usr/bin/env python
from argparse import ArgumentParser
import os
import subprocess


def install(install_dir):
    ''' Install .vim/ + .vimrc
    Install .tmux.conf
    Setup pyenv + pyenv-virtualenv
    '''

    repo_dir = os.path.dirname(os.path.realpath(__file__))
    vim_dir_path = os.path.join(repo_dir, 'vim')
    vimrc_path = os.path.join(vim_dir_path, 'vimrc')
    tmux_path = os.path.join(repo_dir, 'tmux.conf')

    # vim
    vim_dir_target = os.path.join(install_dir, '.vim')
    os.system('ln -s %s %s' % (vim_dir_path, vim_dir_target))

    vimrc_target = os.path.join(install_dir, '.vimrc')
    os.system('ln -s %s %s' % (vimrc_path, vimrc_target))

    # tmux
    tmux_target = os.path.join(install_dir, '.tmux.conf')
    os.system('ln -s %s %s' % (tmux_path, tmux_target))

    # pyenv + pyenv-virtualenv


if __name__ == '__main__':
    arg_parser = ArgumentParser()
    arg_parser.add_argument('-i', '--install-dir', type=str,
        help='specify the install directory')
    args = arg_parser.parse_args()

    install_dir = os.path.realpath(args.install_dir) or os.environ['HOME']
    install(install_dir)

