#!/bin/sh

exec apt-get --no-install-recommends    \
                             install -y \
   curl                                 \
   jq                                   \
   meld                                 \
   pinta                                \
   xclip                                \
   rsync                                \
   tmux                                 \
   vim-gtk                              \
   zsh
