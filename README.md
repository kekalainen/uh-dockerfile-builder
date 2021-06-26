# Dockerfile builder 🛠️

A Docker container image for cloning a Git repository, building an image from a contained `Dockerfile` and pushing it to a Docker container registry.

## Building the builder

```sh
docker build . -t kekalainen/uh-dockerfile-builder
```

## Building with the builder

```sh
docker run --name=uh-dockerfile-builder -v /var/run/docker.sock:/var/run/docker.sock -e GIT_REPOSITORY=https://github.com/docker-hy/docker-hy.github.io.git -e IMAGE_TAG=kekalainen/uh-dockerfile-builder-example -e REGISTRY_USERNAME=kekalainen -e REGISTRY_TOKEN=token kekalainen/uh-dockerfile-builder
```
