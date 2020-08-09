export PROJECT_DIR=${BASE_DIR}/<ENTER PROJECT NAME HERE>
export PYTHONPATH=${PROJECT_DIR}:${PYTHONPATH}

# tensorboard helpers
alias tb="tmux new -d -s tb 'sa && tensorboard --logdir=${PROJECT_DIR}/tensorboard'"
alias tbl="tmux ls"
alias tbkill="tmux kill-session -t tb"
alias tbclear="rm ${PROJECT_DIR}/tensorboard/global/*/*"

