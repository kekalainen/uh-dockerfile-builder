#!/bin/sh

git clone "$GIT_REPOSITORY" .

docker build . -t "$IMAGE_TAG"

docker login "$REGISTRY_URL" -u="$REGISTRY_USERNAME" -p="$REGISTRY_TOKEN"

docker push "$IMAGE_TAG"
