#!/bin/bash

# Local directory to backup
LOCAL_DIR=$1

echo
echo "##############################################"
echo "# Run backup for ${1}"
echo "##############################################"

restic backup -o b2.connections=50 ${LOCAL_DIR}

# Unset variables
unset RESTIC_REPOSITORY
unset B2_ACCOUNT_ID
unset B2_ACCOUNT_KEY
unset RESTIC_PASSWORD_FILE
unset LOCAL_DIR
