FROM docker.io/alpine:3.16.3

ARG OPENVPN_PACKAGE_VERSION=2.5.6-r1
RUN apk add --no-cache openvpn=$OPENVPN_PACKAGE_VERSION

VOLUME /vpn-config
ENV OPENVPN_CONFIG_PATH=/vpn-config/hackthebox.ovpn
COPY ./vpn.sh /vpn.sh
CMD ["/vpn.sh"]
