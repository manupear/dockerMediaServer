#/bin/bash

for compose in $(find "$PWD/../" -type f -not -path '*.unused*' -name 'docker-compose.yml' | sort); do
  infisical run -- docker compose -f $compose up -d
done
