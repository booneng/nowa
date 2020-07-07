#!/usr/bin/env bash

ROOT="$(cd "$(dirname "$0")/.." &>/dev/null; pwd -P)"

PROTOC_CONTAINER_IMAGE="docker.io/booneng/protoc"

docker pull --quiet "${PROTOC_CONTAINER_IMAGE}" > /dev/null

docker run \
--interactive \
--rm \
--volume "${ROOT}:${ROOT}" \
--workdir "${ROOT}" \
"${PROTOC_CONTAINER_IMAGE}" \
    --proto_path=${ROOT} \
    --go_out=plugins=grpc,paths=source_relative:. \
    ${ROOT}/protos/*.proto

echo "Protos regenerated (OK)"