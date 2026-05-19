#!/bin/bash

tmux new-window -n k8s

# abre os paineis
tmux send-keys -t k8s "ssh root@192.168.56.10" Enter
tmux split-window -h -t k8s
tmux send-keys -t k8s "ssh root@192.168.56.11" Enter
tmux split-window -v -t k8s
tmux send-keys -t k8s "ssh root@192.168.56.12" Enter

# habilita sync em todos os paineis
tmux set-window-option -t k8s synchronize-panes on

tmux attach -t k8s
