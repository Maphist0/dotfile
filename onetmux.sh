#!/bin/sh
tmux new-session -d -n ot
tmux rename-session ot
tmux send-keys -t ot 'vim' C-m
tmux attach-session
