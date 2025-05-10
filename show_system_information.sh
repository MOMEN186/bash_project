#!/bin/bash

echo "Full kernel info"
uname -a
          
echo "system hostname"
hostname

echo "system uptime"
uptime

echo "Detailed CPU inforamtion"
lscpu

echo "Memory usage"
free -h

echo "Disk space usage"
df -h

echo "Block devices and partitions"
lsblk

echo "OS version"
cat /etc/os-release 

echo "Kernel version"
cat /proc/version   
