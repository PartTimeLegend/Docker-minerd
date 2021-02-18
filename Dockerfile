FROM ubuntu
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get dist-upgrade -y
RUN apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++ -y
RUN git clone https://github.com/tpruvot/cpuminer-multi
WORKDIR cpuminer-multi
VOLUME cpuminer-multi
ENTRYPOINT  ["./build.sh"]