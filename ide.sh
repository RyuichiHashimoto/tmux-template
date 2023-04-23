#!/bin/bash

set -o errexit  # Exit script if any command fails
set -o nounset  # Exit script if undefined variable is used
set -o pipefail # Exit script if any command in pipeline fails


# Split pane horizontally
tmux split-window -h



tmux select-pane -t 1
tmux split-window -v
tmux split-window -v
tmux select-layout main-vertical  # Arrange panes vertically

tmux select-pane -t 0
tmux resize-pane -R 25  # Resize current pane to the right

tmux split-window -v
tmux resize-pane -D 15  # Resize current pane downwards
tmux select-pane -t 0  # Select first pane

