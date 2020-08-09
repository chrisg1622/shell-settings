export JUPYTER_PATH=${PYTHONPATH}:${JUPYTER_PATH}:

alias nb="tmux new -d -s nb 'sa && jupyter notebook --notebook-dir=${BASE_DIR}/notebooks'"
alias nbl='jupyter notebook list'
alias nbkill="tmux kill-session -t nb"
