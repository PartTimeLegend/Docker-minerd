FROM ubuntu
RUN apt-get update -y
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
RUN git clone https://github.com/tpruvot/cpuminer-multi
WORKDIR cpuminer-multi
VOLUME cpuminer-multi
ENTRYPOINT  ["./build.sh"]