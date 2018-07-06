# zabbix-docker-ct-utilization
This template allow zabbix to monitor docker containers' CPU and Memory by directly reading information from /sys/fs/cgroup/. So the data can be read as often with very minimal overhead and does not require extra userparameter except the container discovery.

# Installation
- Copy the discovery script to '/etc/zabbix/scripts'
- Add userparameter to zabbix-agent configuration
- Add sudoers entry allowing zabbix agent to run 'docker-ct-discovery.sh' script
- import the 'template.xml' into zabbix web
- Bind template to your host

