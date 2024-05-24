#!/usr/bin/env bash

# Base directory containing source code
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Optional TAG argument (if set, only the specified image will be built)
TAG=${1:-null}

# Check if the TAG variable is set
if [ "$TAG" != null ]

  # Only build one image
  then
    FILE="${DIR}"/"${TAG}"/_docker-tags.txt

    # Check if image has multiple tags (indicated by file existence)
    if [ -f "${FILE}" ]; then
      echo "${TAG} directory has multiple Docker tags"

      TAGS=""
      while IFS= read -r line; do
        TAGS="${TAGS} -t stephenneal/nginx-flask:${line}"
      done < "${DIR}"/"${TAG}"/_docker-tags.txt

      COMMAND="docker build ${TAGS} ${DIR}/${TAG}/"
      echo "${COMMAND}"
      $(echo "${COMMAND}")
    else
      docker build -t stephenneal/nginx-flask:"${TAG}" "${DIR}"/"${TAG}"/
    fi

  # Build all images
  else
    docker build -t stephenneal/nginx-flask:1.16-alpine "${DIR}"/1.16-alpine/
    docker build -t stephenneal/nginx-flask:1.16-alpine-v2 "${DIR}"/1.16-alpine-v2/
    docker build -t stephenneal/nginx-flask:1.17-alpine "${DIR}"/1.17-alpine/
    docker build -t stephenneal/nginx-flask:1.17-alpine-v2 "${DIR}"/1.17-alpine-v2/
    docker build -t stephenneal/nginx-flask:1.17-alpine-v3 "${DIR}"/1.17-alpine-v3/
    docker build -t stephenneal/nginx-flask:1.17-alpine-v4 "${DIR}"/1.17-alpine-v4/
    docker build -t stephenneal/nginx-flask:1.18-alpine "${DIR}"/1.18-alpine/
    docker build -t stephenneal/nginx-flask:1.19-alpine "${DIR}"/1.19-alpine/
    docker build -t stephenneal/nginx-flask:1.20-alpine "${DIR}"/1.20-alpine/
    docker build -t stephenneal/nginx-flask:1.21-alpine "${DIR}"/1.21-alpine/
    docker build -t stephenneal/nginx-flask:1.22-alpine "${DIR}"/1.22-alpine/
    docker build -t stephenneal/nginx-flask:1.23-alpine "${DIR}"/1.23-alpine/
    docker build -t stephenneal/nginx-flask:1.24-alpine "${DIR}"/1.24-alpine/
    docker build -t stephenneal/nginx-flask:1.25-alpine "${DIR}"/1.25-alpine/
    docker build -t stephenneal/nginx-flask:1.26-alpine "${DIR}"/1.26-alpine/
fi