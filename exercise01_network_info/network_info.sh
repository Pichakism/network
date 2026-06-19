#!/bin/bash

echo "===== Interfaces =====" > network_info
ip link show >> network_info

echo "" >> network_info
echo "===== IP Address =====" >> network_info
ip addr show >> network_info

echo "" >> network_info
echo "===== Gateway =====" >> network_info
ip route >> network_info

echo "" >> network_info
echo "===== DNS =====" >> network_info
resolvectl status >> network_info
