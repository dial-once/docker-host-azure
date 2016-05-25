#!/bin/sh
# 3 minutes 1/2 because Azure kills inactivity > 4 minutes
echo 210 > /proc/sys/net/ipv4/tcp_keepalive_time
# Every minute, send a packet
echo 60 > /proc/sys/net/ipv4/tcp_keepalive_intvl
# 20 probes
echo 20 > /proc/sys/net/ipv4/tcp_keepalive_probes