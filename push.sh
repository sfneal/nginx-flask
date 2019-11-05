#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sh "${DIR}"/build.sh

docker push stephenneal/nginx-flask:1.16-alpine
docker push stephenneal/nginx-flask:1.16-alpine-v2
docker push stephenneal/nginx-flask:1.17-alpine
docker push stephenneal/nginx-flask:1.17-alpine-v2
docker push stephenneal/nginx-flask:1.17-alpine-v3