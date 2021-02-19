FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London
RUN apt-get update -y && \
  apt-get upgrade -y && \
  apt-get dist-upgrade -y
RUN apt-get install automake \
  autoconf \
  pkg-config \
  libcurl4-openssl-dev \
  libjansson-dev \
  libssl-dev \
  libgmp-dev \
  zlib1g-dev \
  make \
  g++ \
  git -y
RUN git clone https://github.com/tpruvot/cpuminer-multi
WORKDIR cpuminer-multi
VOLUME cpuminer-multi
RUN  ./build.sh
RUN apt-get remove automake \
  autoconf \
  pkg-config \
  make \
  g++ \
  git -y
ENTRYPOINT ["./minerd"]
