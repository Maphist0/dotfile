#!/bin/sh
tmux new-session -d -n onetmux
tmux rename-session onetmux
tmux split-window -h
tmux split-window -v
tmux select-pane -t 0
tmux split-window -v
tmux select-pane -t 0
tmux attach-session
