#!/usr/bin/bash
systemctl start squid.service
openvpn --config configvpn.ovpn --auth-nocache --auth-user-pass auth.txt
	exit 0;
