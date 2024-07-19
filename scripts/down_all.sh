#/bin/bash

for compose in $(find "$PWD/../" -type f -not -path '*.unused*' -name 'compose.yml' | sort -r); do
  docker compose --env-file /nfs/backups/docker-server-env/.env -f $compose down
done
