```sh
$ docker-compose up
...
gateway_1  | + openvpn --config /vpn-config/hackthebox.ovpn --user openvpn --group openvpn
...

$ docker network inspect hacktheboxgateway_default | jq '.[0]["Containers"]'
{
  "abcdef": {
    "Name": "hacktheboxgateway_gateway_1",
    "EndpointID": "ghijkl",
    "MacAddress": "02:42:c0:a8:40:02",
    "IPv4Address": "192.168.64.2/20",
    "IPv6Address": ""
  }
}

$ ip route add 10.10.10.0/24 via 192.168.64.2
```
