```sh
$ sudo docker-compose up
...
gateway_1  | + openvpn --config /vpn-config/hackthebox.ovpn --user openvpn --group openvpn
...
$ sudo ip route add 10.10.10.0/24 via \
    "$(sudo docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' hackthebox_gateway)"
```
