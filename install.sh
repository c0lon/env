#!/usr/bin/bash


SHELL="bash"

if [ $SHELL == "bash" ]; then
    cp "$PWD/.bashrc" "$HOME/.bashrc"
fi

cp "$PWD/.vimrc" "$HOME/.vimrc"

exec $SHELL
reset
