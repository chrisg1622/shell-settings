#!/usr/bin/env bash

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

echo 'Loading core settings... type "settings" to view these in sublime'
export BASE_DIR=/Users/cgeorge/ChrisGeorge/Projects
export ENV_DIR=${BASE_DIR}/.venvs

cd ${BASE_DIR}
source ${SETTINGS_DIR}/git.sh
source ${SETTINGS_DIR}/jupyter.sh
source ${SETTINGS_DIR}/spacy.sh
source ${SETTINGS_DIR}/tensorflow.sh

alias ll='ls -lGaf'

alias python='python3'
alias pip='pip3'

alias brc='cat ~/.bash_profile'
alias bre='sublime ~/.bash_profile'
alias settings='sublime ${SETTINGS_DIR} && sleep 2 && bre'


alias create_project='cp ${SETTINGS_DIR}/project_template.sh ${SETTINGS_DIR}/projects/${1}.sh'
alias start_project='source ${SETTINGS_DIR}/projects/${1}.sh'
alias project='start_project'
check_project() {
    FUNC_NAME=$1
    if ! [ -z ${PROJECT_DIR+x} ]; then
        echo "Error: You must start a project before you can run ${FUNC_NAME}. Try running 'start <project_name>'."
        return 0
    fi
}

alias sa='source ${ENV_DIR}/.core/bin/activate'
alias sd='deactivate'
