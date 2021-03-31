#!/bin/bash
source .env

# Overwrite GIT_REVISION with first argument if passed
if [ -n "$1" ]; then
  GIT_REVISION=$1
fi

docker push docker.ub.gu.se/dliver-frontend:${GIT_REVISION_FRONTEND} && \
docker push docker.ub.gu.se/dliver-backend:${GIT_REVISION_BACKEND} && \
