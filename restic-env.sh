#!/bin/bash

# Script location
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Backblaze B2 configuration variables
export RESTIC_REPOSITORY="b2:<bucket-name>"
export B2_ACCOUNT_ID="<account-id>"
export B2_ACCOUNT_KEY="<account-key>"
export RESTIC_PASSWORD_FILE="${DIR}/restic-pw.txt"
