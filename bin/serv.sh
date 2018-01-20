#!/bin/bash

die() { echo "script failure $0: $@" >&2; exit 111; }

declare -A servers

servers=(
    ["server1"]="server1.tmp"
          ["server1"]="server2.tmp"
        )

echo Logging into: ${servers[$11]} and  ${servers[$12]}

if [ -z "${servers[$12]}" ]; then
    echo it is
fi


tmux new-window -n $1
tmux send-keys "ssh koneal@${servers[$11]}.dfwx.masergy.com" C-m
tmux split-window -v
tmux send-keys "ssh koneal@${servers[$12]}.dfwx.masergy.com" C-m
