#!/usr/bin/env bash

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# To use these settings, ensure the following two lines are in your .bash_profile
# export SETTINGS_DIR=<PATH_TO_REPO>
# export BASE_DIR=<PROJECT_BASE_DIRECTORY>
# source ${SETTINGS_DIR}/general.sh

echo 'Loading core settings... type "settings" to view these in sublime'
# Set this variable to store the root of your projects.
export ENV_DIR=${BASE_DIR}/.venvs
if [[ ! "$ENV_DIR" ]]; then
    echo "Creating ${ENV_DIR} directory for virtual environments"
    mkdir ${ENV_DIR}
fi

alias ll='ls -lGaf'
alias duh='du -sh'

alias brc='cat ~/.bash_profile'
alias bre='sublime ~/.bash_profile'
alias settings='sublime ${SETTINGS_DIR} && sleep 2 && bre'

cd ${BASE_DIR}
source ${SETTINGS_DIR}/python.sh
source ${SETTINGS_DIR}/projects.sh
source ${SETTINGS_DIR}/git.sh
source ${SETTINGS_DIR}/jupyter.sh
source ${SETTINGS_DIR}/spacy.sh
source ${SETTINGS_DIR}/tensorflow.sh
