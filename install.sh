#!/usr/bin/bash


SHELL="bash"

case $SHELL in
    *"bash"*)
        cp "$PWD/shells/bashrc" "$HOME/.bashrc"
        ;;
    *"zsh"*) cp
        cp "$PWD/shells/zshrc" "$HOME/.zshrc"
        ;;
    *)
        echo "unsupported shell $SHELL"
        exit -1
        ;;
esac

cp "$PWD/vimrc" "$HOME/.vimrc"

exec $SHELL
reset
