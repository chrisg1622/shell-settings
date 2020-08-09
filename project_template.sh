#!/usr/bin/env bash

PROJECT_NAME=$1

cat  << EOF
#!/usr/bin/env bash

export PROJECT_NAME=${PROJECT_NAME}
export PROJECT_DIR=\${BASE_DIR}/${PROJECT_NAME}
export PYTHONPATH=\${PROJECT_DIR}:\${PYTHONPATH}

EOF
