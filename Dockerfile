FROM ubuntu:20.04
MAINTAINER Expert Software Inc. / https://www.e-software.company

LABEL name="ubuntu 20.04 Base Image" \
      vendor="ExpertSoftware Inc." \
      license="GPLv3" \
      build-date="20210331" \
      build-tag="1.0.1_0" \
      build-version="1"
WORKDIR /tmp
RUN mkdir /.docker

ENV DOCKER_DEBUG 0

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

VOLUME ["/.docker"]

ENTRYPOINT ["/entrypoint.sh"]
