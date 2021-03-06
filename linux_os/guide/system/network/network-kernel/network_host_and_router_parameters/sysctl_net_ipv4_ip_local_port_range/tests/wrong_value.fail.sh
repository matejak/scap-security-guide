#!/bin/bash

if grep -q "^net.ipv4.ip_local_port_range" /etc/sysctl.conf; then
	sed -i "s/^net.ipv4.ip_local_port_range.*/net.ipv4.ip_local_port_range = 34555 36888/" /etc/sysctl.conf
else
	echo "net.ipv4.ip_local_port_range = 34555 36888" >> /etc/sysctl.conf
fi
sysctl -w net.ipv4.ip_local_port_range="34555 36888"
