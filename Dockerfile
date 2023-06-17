FROM docker.io/alpine:3.18.0

# https://github.com/OpenVPN/openvpn/blob/master/Changes.rst
# https://git.alpinelinux.org/aports/log/main/openvpn?h=3.18-stable
ARG OPENVPN_PACKAGE_VERSION=2.6.5-r0
RUN apk add --no-cache openvpn=$OPENVPN_PACKAGE_VERSION

VOLUME /vpn-config
ENV OPENVPN_CONFIG_PATH=/vpn-config/hackthebox.ovpn
COPY ./vpn.sh /vpn.sh
CMD ["/vpn.sh"]
