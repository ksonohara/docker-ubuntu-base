FROM ubuntu:18.04
MAINTAINER Expert Software Inc. / https://www.e-software.company

LABEL name="ubuntu 18.04 Base Image" \
      vendor="ExpertSoftware Inc." \
      license="GPLv3" \
      build-date="20180601" \
      build-tag="1.0.0_0" \
      build-version="0"

RUN mkdir /.docker

ENV DOCKER_DEBUG 0

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
