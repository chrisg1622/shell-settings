[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

echo 'Loading core settings... type "settings" to view these in sublime'
export BASE_DIR=/Users/cgeorge/ChrisGeorge/Projects
export ENV_DIR=${BASE_DIR}/.venvs
export SPACY_PATH='${ENV_DIR}/.core/lib/python3.7/site-packages/spacy/data/en/en_core_web_sm-2.1.0'

cd ${BASE_DIR}
source ${SETTINGS_DIR}/git.sh
source ${SETTINGS_DIR}/jupyter.sh

alias ll='ls -lGaf'

alias python='python3'
alias pip='pip3'

alias brc='cat ~/.bash_profile'
alias bre='sublime ~/.bash_profile'

alias create_project='cp ${SETTINGS_DIR}/project_template.sh ${SETTINGS_DIR}/projects/${1}.sh'
alias start_project='source ${SETTINGS_DIR}/projects/${1}.sh'
alias project='start_project'
alias settings='sublime ${SETTINGS_DIR} && sleep 2 && bre'

alias sa='source ${ENV_DIR}/.core/bin/activate'
alias sd='deactivate'
alias tb='tmux new -d -s tb '\''source activate /Users/cgeorge/ChrisGeorge/Projects/.venv/bin/activate && tensorboard --logdir=/Users/cgeorge/ChrisGeorge/Projects/tensorboard --port 9992 --debugger_port 6064 --reload_interval 10'\'''

