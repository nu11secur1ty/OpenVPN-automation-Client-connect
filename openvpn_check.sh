#!/usr/bin/bash
# by@ nu11secur1ty
PATH=/home/vpnpblx/vpn:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

squid=squid.service
openvpn=openvpn.service

# OpenVpn
if (( $(ps -ef | grep -v grep | grep $openvpn | wc -l) > 0 ))
then
	echo “$openvpn is running!!!”
else
	systemctl start openvpn.service
	# openvpn.service start
	# Do not edit if you don't know WTF
	cd /home/user/your_vpn_env/
	perl ipup.pl >> openvpn_check.log
fi      
	systemctl status openvpn.service

# Squid
	if (( $(ps -ef | grep -v grep | grep $squid | wc -l) > 0 ))
then
        echo “$squid is running!!!”
else
        systemctl start squid.service
        # squid.service start
fi
        systemctl status squid.service

exit 0;
