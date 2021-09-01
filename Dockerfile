FROM alpine:3.14.2

ARG OPENVPN_PACKAGE_VERSION=2.5.2-r0
RUN apk add --no-cache openvpn=$OPENVPN_PACKAGE_VERSION

VOLUME /vpn-config
ENV OPENVPN_CONFIG_PATH=/vpn-config/hackthebox.ovpn
COPY ./vpn.sh /vpn.sh
CMD ["/vpn.sh"]
