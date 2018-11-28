#!/bin/sh
tmux new-session -d -n vtmux vim
tmux rename-session vtmux
tmux attach-session
