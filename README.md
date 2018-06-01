# Summary

 ubuntu base docker container.

# Description

Include ubuntu base image.

# Changelog

## build-version 0

    First Commit / ubuntu:18.04

# Usage

## Configuration

### --env

    DOCKER_DEBUG 0

### --port

    None

### --volume

    None

## Examples

### Pull docker container

    docker pull sonohara/ubuntu-base

### Start docker container

    It's base container. this not run.

### Entrypoint

    /.docker/config Source first and alway.
    /.docker/init.sh Run first and alway.
    /.docker/service.sh Run alway.
    /.docker/setup.sh Run first only.

# ToDo

    Localize setting.

# Other

## Copyright and license

- Code released under [GNU GENERAL PUBLIC LICENSE Version 3](https://github.com/ksonohara/docker-ubuntu-base/blob/master/LICENSE)

## Author

K.Sonohara
- GitHub: https://github.com/ksonohara
- Homepage: [ExpertSoftware Inc.](https://www.e-software.company "ExpertSoftware Inc.")
