#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker build -t stephenneal/nginx-flask:1.16-alpine "${DIR}"/1.16-alpine/
docker build -t stephenneal/nginx-flask:1.16-alpine-v2 "${DIR}"/1.16-alpine-v2/
docker build -t stephenneal/nginx-flask:1.17-alpine "${DIR}"/1.17-alpine/
docker build -t stephenneal/nginx-flask:1.17-alpine-v2 "${DIR}"/1.17-alpine-v2/
docker build -t stephenneal/nginx-flask:1.17-alpine-v3 "${DIR}"/1.17-alpine-v3/