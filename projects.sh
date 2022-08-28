#!/usr/bin/env bash


new_project() {
    PROJECT_NAME=$1
    # create settings file
    FILE_NAME=${SETTINGS_DIR}/projects/${PROJECT_NAME}.sh
    if [[ -f "$FILE_NAME" ]]; then
        echo "${PROJECT_NAME} already exists. Delete ${FILE_NAME} and try again"
    else
        ${SETTINGS_DIR}/project_template.sh ${PROJECT_NAME} > ${FILE_NAME}
        echo "Successfully created ${PROJECT_NAME} project at ${FILE_NAME}"
    fi
    # create venv if it doesn't exist
    create_python_env ${PROJECT_NAME}
}
start_project() {
    PROJECT_NAME=$1
    FILE_NAME=${SETTINGS_DIR}/projects/${PROJECT_NAME}.sh
    source ${FILE_NAME}
    echo "Successfully loaded settings from ${FILE_NAME}"
    ENV=${ENV_DIR}/.${PROJECT_NAME}
    if [[ -d "$ENV" ]]; then
        source ${ENV}/bin/activate
    else
        echo "Could not find virtual environment at ${ENV}. Run 'new_project ${PROJECT_NAME}' to create it."
    fi
    if [[ -d "$PROJECT_DIR" ]]; then
        cd ${PROJECT_DIR}
    else
        echo "Could not find ${PROJECT_DIR}"
    fi
}
alias start='start_project'
# to be used with any function that relies on the PROJECT_DIR variable
check_project() {
    FUNC_NAME=$1
    if [[ -z "$PROJECT_DIR" ]]; then
        echo "Error: You must start a project before you can run ${FUNC_NAME}. Try running 'start <project_name>'."
        return 0
    fi
}
