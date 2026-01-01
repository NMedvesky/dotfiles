#!/usr/bin/env bash

SESSION="FlexPass"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]; then
  tmux new-session -d -s $SESSION

  tmux new-window -t $SESSION:1 -n "Docker"
  tmux send-keys -t "Docker" "docker compose"

  tmux new-window -t $SESSION:2 -n "Server"
  tmux send-keys -t "Server" "uv run manage.py tailwind dev"

  tmux new-window -t $SESSION:3 -n "Vim"
  tmux send-keys -t "Vim" "nvim"

  tmux new-window -t $SESSION:4 -n "Git"
  tmux send-keys -t "Git" "gitui"

fi
tmux attach-session -t $SESSION:0
