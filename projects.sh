#!/usr/bin/env bash

new_project() {
    PROJECT_NAME=$1
    FILE_NAME=${SETTINGS_DIR}/projects/${PROJECT_NAME}.sh
    ${SETTINGS_DIR}/projects/project_template.sh ${PROJECT_NAME} > ${FILE_NAME}
    echo "Successfully created ${PROJECT_NAME} project at ${FILE_NAME}"
}
start_project() {
    PROJECT_NAME=$1
    FILE_NAME=${SETTINGS_DIR}/projects/${PROJECT_NAME}.sh
    source ${FILE_NAME}
    echo "Successfully loaded settings from ${FILE_NAME}"
}
alias start='start_project'
# to be used with any function that relies on the PROJECT_DIR variable
check_project() {
    FUNC_NAME=$1
    if [ -z "$PROJECT_DIR" ]; then
        echo "Error: You must start a project before you can run ${FUNC_NAME}. Try running 'start <project_name>'."
        return 0
    fi
}
