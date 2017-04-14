#!/bin/sh

SCRIPT_ROOT=$(dirname $0)
VERSION="v0.1.2"

docker build -t "jgensl2/sixpack-server:${VERSION}" --file "${SCRIPT_ROOT}/server.Dockerfile" "${SCRIPT_ROOT}"
docker build -t "jgensl2/sixpack-web:${VERSION}" --file "${SCRIPT_ROOT}/web.Dockerfile" "${SCRIPT_ROOT}"

echo "docker push jgensl2/sixpack-web:${VERSION}"
echo "docker push jgensl2/sixpack-server:${VERSION}"
