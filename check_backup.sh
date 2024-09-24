#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PATH=/snap/bin:${PATH}

# Backblaze B2 configuration variables
source ${DIR}/restic-env.sh

echo
echo "##############################################"
echo "# List latest snapshots"
echo "##############################################"
restic snapshots --latest 1

source ${DIR}/restic-env-unset.sh

echo "All done"

