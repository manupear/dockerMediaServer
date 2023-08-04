#!/bin/bash

# export INFISICAL_TOKEN manually

if [ -z "$var"]; then echo "ERROR: Variable INFISICAL_TOKEN is empty." && exit 1; fi
infisical run -- docker compose up -d
