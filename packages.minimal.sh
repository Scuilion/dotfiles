#!/bin/sh
add-apt-repository ppa:aos1/diff-so-fancy
sudo apt-get update

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
   traceroute                           \
   hugo                                 \
   nfs-common                           \
   rsync                                \
   net-tools                            \
   tmux                                 \
   vim-gtk                              \
   openvpn                              \
   network-manager-openvpn              \
   network-manager-openvpn-gnome        \
   giff-so-fancy                        \
   zsh

#multip install doesn't work work in --clasic mode
snap install intellij-idea-ultimate --classic

