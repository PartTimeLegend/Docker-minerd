FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y
RUN apt-get install automake -y
RUN apt-get install autoconf -y
RUN apt-get install pkg-config -y
RUN apt-get install libcurl4-openssl-dev -y
RUN apt-get install libjansson-dev -y
RUN apt-get install libssl-dev -y
RUN apt-get install libgmp-dev -y
RUN apt-get install zlib1g-dev -y
RUN apt-get install make -y
RUN apt-get install g++ -y
RUN apt-get install git -y
RUN git clone https://github.com/tpruvot/cpuminer-multi
WORKDIR cpuminer-multi
VOLUME cpuminer-multi
ENTRYPOINT  ["./build.sh"]