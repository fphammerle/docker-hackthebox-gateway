FROM alpine:3.9

RUN apk add --no-cache openvpn

VOLUME /hackthebox
WORKDIR /hackthebox

CMD ["openvpn", "--config", "/hackthebox/vpn-config.ovpn"]
