#!/usr/bin/env bash

function tb { check_project 'tb' && tmux new -d -s tb 'sa && tensorboard --logdir=${PROJECT_DIR}/tensorboard'; }
alias tbl="tmux ls"
alias tbkill="tmux kill-session -t tb"
function tbclear { check_project 'tbclear' && rm ${PROJECT_DIR}/tensorboard/*; }
