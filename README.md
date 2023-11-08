# OpenVPN-automation-Client-connect

- Your cron job on every 15 minutes

```bash
*/15 * * * *    bash /home/user/your_vpn_env/openvpn_check.sh >> /home/user/your_vpn_env/openvpn_check.log 2>&1
```
