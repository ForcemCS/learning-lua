FROM ubuntu:22.04

RUN apt update \
    && apt install -y wget  liblzo2-2  iproute2 iputils-ping

WORKDIR /scripts

COPY libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb ./

copy openvpn-2.6.9-xor-amd64.deb  ./


copy  str-las304_s439341_account.ovpn ./
 
RUN  dpkg -i openvpn-2.6.9-xor-amd64.deb

RUN  dpkg  -i libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
