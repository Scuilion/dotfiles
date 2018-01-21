#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")"; pwd -P)"
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")"

dir_backup=$DOTFILES_DIR/dotfiles_old

mkdir -p $dir_backup

declare -a FILES_TO_SYMLINK=(
    'git/gitconfig'
    'git/gitignore'

    'idea/ideavimrc'

    'tmux/tmux.conf'

    'vim/vimrc'

    'zsh/zshrc'
)

for file in ${FILES_TO_SYMLINK[@]}; do
    sourceFile="$(pwd)/$file"
    targetFile="$HOME/.$(printf "%s" "$file" | sed "s/.*\/\(.*\)/\1/g")"

    #backup old copy
    if [ -f $targetFile ]; then
        echo "Moving ${targetFile}"
        cp -L $HOME/${targetFile##*/} $dir_backup
        rm $HOME/${targetFile##*/}
    fi

    #link new copy
    ln -s $sourceFile $targetFile

done

