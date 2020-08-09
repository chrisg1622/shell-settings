#!/usr/bin/env bash

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# To use these settings, ensure the following two lines are in your .bash_profile
# export SETTINGS_DIR=<PATH_TO_REPO>
# source ${SETTINGS_DIR}/general.sh

echo 'Loading core settings... type "settings" to view these in sublime'
# Set this variable to store the root of your projects.
export BASE_DIR=/Users/cgeorge/ChrisGeorge/Projects
export ENV_DIR=${BASE_DIR}/.venvs

cd ${BASE_DIR}
source ${SETTINGS_DIR}/projects.sh
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

alias sa='source ${ENV_DIR}/.core/bin/activate'
alias sd='deactivate'
