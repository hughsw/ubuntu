# docker build -t hughsw/ubuntu .
# docker run -it -p 2222:22 hughsw/ubuntu
# docker push hughsw/ubuntu

FROM ubuntu:xenial

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      wget \
      git \
      mercurial \
      ssh \
      openssh-client \
      procps \
      gcc \
      make \
      build-essential \
      libkrb5-dev \
      python3 \
      sudo \
      net-tools \
      apt-utils \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && echo Yes!
