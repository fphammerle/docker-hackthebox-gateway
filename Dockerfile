FROM alpine:3.12

ARG OPENVPN_PACKAGE_VERSION=2.4.9-r0
RUN apk add --no-cache openvpn=$OPENVPN_PACKAGE_VERSION

VOLUME /vpn-config
COPY ./vpn.sh /vpn.sh
CMD ["/vpn.sh"]
