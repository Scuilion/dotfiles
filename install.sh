#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")"; pwd -P)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

dir_backup=$PROJECT_DIR/dotfiles_old

mkdir -p $dir_backup

function link-file(){
    mkdir -p "${2:h}"
    rm -rf "$2"
    ln -s "$PWD/$1" "$2"
}

link-file vim ~/.vim

declare -a FILES_TO_SYMLINK=(
    'git/gitconfig'
    'git/gitignore_global'

    'idea/ideavimrc'

    'tmux/tmux.conf'

    'vim/vimrc'

    'zsh/zshrc'
)

for file in ${FILES_TO_SYMLINK[@]}; do
    sourceFile="$(pwd)/$file"
    targetFile="$HOME/.$(printf "%s" "$file" | sed "s/.*\/\(.*\)/\1/g")"

    if [ -f $targetFile ]; then
        cp -L $HOME/${targetFile##*/} $dir_backup
        rm $HOME/${targetFile##*/}
    fi

    #link new copy
    ln -sf $sourceFile $targetFile

done

# Copy binaries
mkdir ~/bin/
ln -s $SCRIPT_DIR/bin/* ~/bin/

./gsettings.sh
./sdkman-install.sh
#./helm-install.sh

