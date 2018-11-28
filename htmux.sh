#!/bin/sh
tmux new-session -d -n htmux
tmux rename-session htmux
tmux split-window -h -p 40 watch -n 1 --color gpustat -cp --color
tmux split-window -v -p 80 htop
tmux select-pane -t 0
tmux split-window -v
tmux split-window -v
tmux select-pane -t 0
tmux attach-session
