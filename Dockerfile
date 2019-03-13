FROM alpine:3.9

RUN apk add --no-cache openvpn

VOLUME /vpn-config
COPY ./vpn.sh /vpn.sh
CMD ["/vpn.sh"]
