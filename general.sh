#!/usr/bin/env bash

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# To use these settings, ensure the following two lines are in your .bash_profile
# export SETTINGS_DIR=<PATH_TO_REPO>
# export BASE_DIR=<PROJECT_BASE_DIRECTORY>
# source ${SETTINGS_DIR}/general.sh

echo 'Loading core settings... type "settings" to view these in sublime'

# sublime setup
if [[ ! "/usr/local/subl" ]]; then
    ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/subl
    echo "Created Symlink to sublime -> type 'subl' to open sublime"
fi
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local:$PATH

# set sublime as default editor
export EDITOR='subl -w'

# Set this variable to store the root of your projects.
export ENV_DIR=${BASE_DIR}/.venvs
if [[ ! "$ENV_DIR" ]]; then
    echo "Creating ${ENV_DIR} directory for virtual environments"
    mkdir ${ENV_DIR}
fi

alias ll='ls -lGaf'
alias duh='du -sh'

alias brc='cat ~/.bash_profile'
alias bre='subl ~/.bash_profile'
alias zrc='cat ~/.zshrc'
alias zre='subl ~/.zshrc'
alias settings='subl ${SETTINGS_DIR} && sleep 2 && zre'

cd ${BASE_DIR}
source ${SETTINGS_DIR}/pyenv.sh
source ${SETTINGS_DIR}/python.sh
source ${SETTINGS_DIR}/projects.sh
source ${SETTINGS_DIR}/git.sh
source ${SETTINGS_DIR}/jupyter.sh
source ${SETTINGS_DIR}/spacy.sh
source ${SETTINGS_DIR}/tensorflow.sh
