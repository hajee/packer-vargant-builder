#!/usr/bin/env bash
echo "DEVICE=eth1"    >> /etc/sysconfig/network-scripts/ifcfg-eth1
echo "BOOTPROTO=none" >> /etc/sysconfig/network-scripts/ifcfg-eth1
echo "ONBOOT="        >> /etc/sysconfig/network-scripts/ifcfg-eth1
chmod 0644 /etc/sysconfig/network-scripts/ifcfg-eth1
