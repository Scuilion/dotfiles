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
#link-file vim/bundle

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
        #echo "Backing up: ${targetFile}"
        cp -L $HOME/${targetFile##*/} $dir_backup
        rm $HOME/${targetFile##*/}
    fi

    #link new copy
    ln -sf $sourceFile $targetFile

done

# Copy binaries
#for f in $(ls -d $_DIR/bin/*); do ln -s $f $HOME/bin/; done && ls -al $HOME/bin/
ln -fs $SCRIPT_DIR/bin/* $HOME/bin

./sdkman-install.sh
./helm-install.sh
