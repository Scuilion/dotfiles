#!/bin/bash

die() { echo "Script failure $0: $@" >&2; exit 111; }

CFG=$HOME/project/corporate-dotfiles/cfg/servers.cfg

if [ ! -f  $CFG ]; then
    die must have $CFG
else
    source $CFG
fi

if [ -z "${servers[$11]}" ] || [ -z "${servers[$12]}" ]; then
    die
fi

echo Logging into: ${servers[$11]} and  ${servers[$12]}

tmux new-window -n $1
tmux send-keys "ssh koneal@${servers[$11]}.$domain" C-m
tmux split-window -v
tmux send-keys "ssh koneal@${servers[$12]}.$domain" C-m
