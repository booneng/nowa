#!/usr/bin/env bash

ROOT="$(cd "$(dirname "$0")/.." &>/dev/null; pwd -P)"

PROTOC_GO_CONTAINER_IMAGE="docker.io/booneng/protoc-go"

PROTOC_DART_CONTAINER_IMAGE="docker.io/booneng/protoc-dart"

docker pull --quiet "${PROTOC_GO_CONTAINER_IMAGE}" > /dev/null

docker pull --quiet "${PROTOC_DART_CONTAINER_IMAGE}" > /dev/null

docker run \
    --interactive \
    --rm \
    --volume "${ROOT}:${ROOT}" \
    --workdir "${ROOT}" \
    "${PROTOC_GO_CONTAINER_IMAGE}" \
        --proto_path=${ROOT} \
        --go_out=plugins=grpc,paths=source_relative:. \
        ${ROOT}/server/proto/*.proto

docker run \
    --interactive \
    --rm \
    --volume "${ROOT}:${ROOT}" \
    --workdir "${ROOT}" \
    "${PROTOC_DART_CONTAINER_IMAGE}" \
        --proto_path=${ROOT} \
        --dart_out=grpc:. \
        ${ROOT}/server/proto/*.proto

echo "Protos regenerated (OK)"
