#!/bin/bash

set -o errexit  # Exit script if any command fails
set -o nounset  # Exit script if undefined variable is used
set -o pipefail # Exit script if any command in pipeline fails

default_screen() {
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
}

threepane_screen() {
  tmux split-window -v
  tmux select-pane -t 0
  tmux split-window -h
  tmux select-pane -t 0
  tmux resize-pane -D 15  # Resize current pane downwards
}

fourpane_screen() {
  tmux split-window -v
  tmux select-pane -t 0
  tmux split-window -h
  tmux select-pane -t 0
  tmux resize-pane -D 15  # Resize current pane downwards
  tmux select-pane -t 1
  tmux split-window -v
  tmux select-pane -t 0
}

if [ $# -eq 0 ]; then
  default_screen
elif [ "$1" = "default" ]; then
  default_screen
elif [ "$1" = "three" ]; then
  threepane_screen
elif [ "$1" = "four" ]; then
  fourpane_screen
elif [ "$1" = "clear" ]; then 
  echo "Do you really want to delete all panes? [yes or no]"
  read -r ans
  if [ "$ans" = "y" ] || [ "$ans" = "yes" ]; then
    tmux kill-pane -a
  else
    echo "Do nothing."
  fi
fi

