#!/usr/bin/bash


SHELL="bash"

if [ $SHELL == "bash" ]; then
    cp "$PWD/shells/bashrc" "$HOME/.bashrc"
fi

cp "$PWD/vimrc" "$HOME/.vimrc"

exec $SHELL
reset
