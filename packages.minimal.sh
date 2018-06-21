#!/bin/sh

apt-get --no-install-recommends    \
                             install -y \
   curl                                 \
   pwgen                                \
   openssh-client                       \
   openssh-server                       \
   jq                                   \
   meld                                 \
   pinta                                \
   xclip                                \
   rsync                                \
   tmux                                 \
   vim-gtk                              \
   zsh

#multip install doesn't work work in --clasic mode
snap install intellij-idea-ultimate --classic
snap install go --classic
snap install kubectl --classic
