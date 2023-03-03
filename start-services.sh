#! /bin/bash

docker-compose \
  -f docker-compose-backup.yml \
  -f docker-compose-traefik.yml \
  -f docker-compose-nextcloud.yml \
  up --build --detach