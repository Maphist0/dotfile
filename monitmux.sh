#!/bin/sh
tmux new-session -d -n monitor
tmux rename-session monitor
tmux send-keys -t monitor 'htop' C-m
tmux split-window -v -p 40 watch -n 1 --color gpustat -cp --color
tmux attach-session
