#!/bin/sh
echo Hello, please input the name of session

read sessname

echo Creating session with name: $sessname

tmux new-session -d -n $sessname
tmux rename-session $sessname
tmux select-pane -t 0
tmux attach-session
