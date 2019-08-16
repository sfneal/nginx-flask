#!/usr/bin/env bash

docker build -t stephenneal/nginx-flask:1.16-alpine ./1.16-alpine/
docker build -t stephenneal/nginx-flask:1.16-alpine-v2 ./1.16-alpine-v2/
docker build -t stephenneal/nginx-flask:1.17-alpine ./1.17-alpine/
docker build -t stephenneal/nginx-flask:1.17-alpine-v2 ./1.17-alpine-v2/
docker build -t stephenneal/nginx-flask:1.17-alpine-v3 ./1.17-alpine-v3/