#!/usr/bin/bash
# by@nu11secur1ty
systemctl start squid.service
openvpn --config configvpn.ovpn --auth-nocache --auth-user-pass auth.txt
	exit 0;
