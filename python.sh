#!/usr/bin/env bash

create_python_env() {
    PROJECT_NAME=$1
    ENV=${ENV_DIR}/.${PROJECT_NAME}
    if [[ -d "$ENV" ]]; then
        echo "${PROJECT_NAME} venv already exists. Delete ${ENV} and try again"
    else
        echo "Creating new venv at ${ENV}"
        python3 -m venv ${ENV}
        # install requirements if the file exists within the project's root directory
        REQUIREMENTS=${BASE_DIR}/${PROJECT_NAME}/requirements.txt
        if [[ -f "$REQUIREMENTS" ]]; then
            echo "installing requirements from ${REQUIREMENTS}"
            source ${ENV}/bin/activate
            pip3 install --upgrade pip
            pip3 install -r ${REQUIREMENTS}
            deactivate
        else
            echo "Could not find requirements at ${REQUIREMENTS}"
        fi
    fi
}

CORE_ENV=${ENV_DIR}/.core
if [[ -d "$CORE_ENV" ]]; then
    create_python_env core
fi

alias python='python3'
alias pip='pip3'
alias sa='source ${CORE_ENV}/bin/activate'
alias sd='deactivate'
