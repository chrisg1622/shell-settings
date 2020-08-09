#!/usr/bin/env bash

export SPACY_PATH='${ENV_DIR}/.core/lib/python3.7/site-packages/spacy/data/en/en_core_web_sm-2.1.0'

# By default, each spacy model will try to use all cores.
export OMP_NUM_THREADS=1
export MKL_NUM_THREADS=1
export OPENBLAS_NUM_THREADS=1
export NUMEXPR_NUM_THREADS=1
