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

RUN echo 'source /etc/profile.d/*.sh' >> ~/.bashrc

RUN apt update -y && apt upgrade -y && apt update -y

RUN apt install -y locales language-pack-ja-base language-pack-ja
RUN locale-gen ja_JP.UTF-8
# && echo "export LANG=ja_JP.UTF-8" >> /etc/profile.d/lang.sh

RUN apt install -y tzdata
#RUN echo "export TZ=Asia/Tokyo" >> /etc/profile.d/timezone.sh

ENV TZ Asia/Tokyo

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

VOLUME ["/.docker"]

ENTRYPOINT ["/entrypoint.sh"]

RUN apt autoremove -y && apt clean && rm -rf /var/lib/apt/lists/*
