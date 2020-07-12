#!/usr/bin/env bash

ROOT="$(cd "$(dirname "$0")/.." &>/dev/null; pwd -P)"

DB_CONTAINER_IMAGE="postgres:latest"
DB_USER="nowauser"
DB_PASSWORD="secretpassword"
DB_NAME="nowa"
DB_PORT="5432"

docker run \
    --name "${DB_NAME}" \
    --env "POSTGRES_DB=${DB_NAME}" \
    --env "POSTGRES_USER=${DB_USER}" \
    --env "POSTGRES_PASSWORD=${DB_PASSWORD}" \
    --detach \
    --publish "${DB_PORT}:5432" \
    "${DB_CONTAINER_IMAGE}" 

docker cp schema/schema.sql ${DB_NAME}:/tmp/
docker cp schema/fake_data.sql ${DB_NAME}:/tmp/

sleep 5

docker exec \
    "${DB_NAME}" \
    psql \
    --username "${DB_USER}" \
    --dbname "${DB_NAME}" \
    --file /tmp/schema.sql

docker exec \
    "${DB_NAME}" \
    psql \
    --username "${DB_USER}" \
    --dbname "${DB_NAME}" \
    --file /tmp/fake_data.sql
