#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail


tmux split-window -h
tmux select-pane -t 1
tmux split-window -v
tmux split-window -v
tmux select-layout main-vertical

tmux select-pane -t 0
tmux resize-pane -R 25


tmux split-window -v
tmux resize-pane -D 15

tmux select-pane -t 0
