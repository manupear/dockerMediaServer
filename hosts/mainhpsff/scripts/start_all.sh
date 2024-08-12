#/bin/bash

for compose in $(find "$PWD/../composes" -type f -not -path '*.unused*' -name 'compose.yml' | sort -r); do
  docker compose --env-file /smb/backups/docker-server-env/.env -f $compose up -d
done
