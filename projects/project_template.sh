#!/usr/bin/env bash

export PROJECT_DIR=${BASE_DIR}/<ENTER PROJECT NAME HERE>
export PYTHONPATH=${PROJECT_DIR}:${PYTHONPATH}

# tensorboard helpers
tb = {
    if [ -z ${PROJECT_DIR+x} ]; then
        tmux new -d -s tb 'sa && tensorboard --logdir=${PROJECT_DIR}/tensorboard'
    else
        echo "Error: You must start a project before you can run tensorboard. Try running 'start <project_name>'"
    fi
}
alias tbl="tmux ls"
alias tbkill="tmux kill-session -t tb"
alias tbclear="rm ${PROJECT_DIR}/tensorboard/*"
