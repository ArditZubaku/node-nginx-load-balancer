#!/usr/bin/env bash

set -a
source .env
set +a

for i in {1..500}; do
  curl "localhost:${NGINX_PORT}/api/users"
  echo "$i"
done
