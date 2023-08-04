#!/bin/bash

if [ -z "$var"]; then echo "ERROR: Variable INFISICAL_TOKEN is empty." && exit 1; fi
infisical run -- docker compose down
