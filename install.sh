#!/bin/bash

echo "[!] Setting shit up...."
echo "[!] When editor pops up, enter this at end of first line: cgroup_enable=cpuset cgroup_enable=memory cgroup_memory=1 net.bridge.bridge-nf-call-iptables=1"
sleep 3
sudo nano /boot/firmware/cmdline.txt
echo "[!] Doing network config...."
sudo modprobe br_netfilter
echo "[!!] uncomment net.ipv4.ip_forward=1 when editor pops up..."
sleep 3
sudo nano /etc/sysctl.conf
echo "[ATT] Restarting in 5 seconds, after type ./k3sRPI/finish.sh"
sleep 5
sudo reboot
