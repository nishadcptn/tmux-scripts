#!/bin/bash
cd /home/nishad/Desktop/CM/cm-facade-jira/Culture-Matters-JIRA/
tmux new-session -d -s my_session1
tmux split-window -h
tmux split-window -v
tmux select-pane -t 1
tmux split-window -h
tmux split-window -h

tmux select-pane -t 1
tmux send-keys "cd static/cm-facade-jira/" C-m
tmux send-keys "npm start" C-m

tmux select-pane -t 2
tmux send-keys "cd static/cm-issue-panel/" C-m
tmux send-keys "npm start" C-m

tmux select-pane -t 3
tmux send-keys "cd static/cm-activity-panel/" C-m
tmux send-keys "npm start" C-m

tmux select-pane -t 4
tmux send-keys "lt -s culture-matters --port 8080" C-m

tmux select-pane -t 0
tmux send-keys "forge tunnel" C-m

tmux attach-session -t my_session1
