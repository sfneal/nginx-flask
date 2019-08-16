#!/usr/bin/env bash

sh ./build.sh

docker push stephenneal/nginx-flask:1.16-alpine
docker push stephenneal/nginx-flask:1.16-alpine-v2
docker push stephenneal/nginx-flask:1.17-alpine
docker push stephenneal/nginx-flask:1.17-alpine-v2
docker push stephenneal/nginx-flask:1.17-alpine-v3