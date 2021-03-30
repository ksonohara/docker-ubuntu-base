# Summary

 ubuntu base docker container with japanese.

# Description

Include ubuntu base image. with japanese.

# Changelog

## build-version 1 20.04 latest

    OS Upgrade / ubuntu:20.04

## build-version 0 18.04

    First Commit / ubuntu:18.04

# Usage

## Configuration

### --env

    DOCKER_DEBUG 0

### --port

    None

### --volume

    /.docker

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
