#!/bin/sh

apt-get --no-install-recommends    \
                             install -y \
   curl                                 \
   pwgen                                \
   openssh-client                       \
   openssh-server                       \
   cifs-utils                           \
   jq                                   \
   meld                                 \
   make                                 \
   pinta                                \
   xclip                                \
   rsync                                \
   net-tools                            \
   tmux                                 \
   vim-gtk                              \
   zsh

#multip install doesn't work work in --clasic mode
snap install intellij-idea-ultimate --classic
snap install go --classic
snap install kubectl --classic
snap install minikube --classic
snap install aws-cli --classic

#Install docker
snap install docker
addgroup --system docker
adduser kevino docker
sudo su -c "newgrp docker" kevino
snap disable docker
snap enable docker

