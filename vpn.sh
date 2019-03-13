#!/bin/sh

set -ex

iptables -P FORWARD DROP
iptables -A FORWARD -i eth0 -o tun0 -d 10.10.10.0/24 -j ACCEPT
iptables -A FORWARD -i tun0 -o eth0 -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE

openvpn --config /vpn-config/hackthebox.ovpn \
    --user openvpn --group openvpn