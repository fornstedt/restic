#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PATH=/snap/bin:${PATH}

# Backblaze B2 configuration variables
source ${DIR}/restic-env.sh

echo
echo "##############################################"
echo "# Test connection to ${RESTIC_REPOSITORY}."
echo "##############################################"
restic snapshots || exit 1
echo "Connection established."

while read folder; do
  echo
  echo "##############################################"
  echo "# Run backup for ${folder}"
  echo "##############################################"
  restic backup -o b2.connections=50 ${folder}
done < ${DIR}/backup-folders.txt

echo
echo "##############################################"
echo "# Remove old snapshots"
echo "##############################################"
restic forget --keep-daily 7 --keep-weekly 8 --keep-monthly 24

echo
echo "##############################################"
echo "# Check repository"
echo "##############################################"
restic check

echo
echo "##############################################"
echo "# List latest snapshots"
echo "##############################################"
restic snapshots --last

source ${DIR}/restic-env-unset.sh

echo "All done"

