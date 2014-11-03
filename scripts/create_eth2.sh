#!/usr/bin/env bash
echo "DEVICE=eth2"    >> /etc/sysconfig/network-scripts/ifcfg-eth2
echo "BOOTPROTO=none" >> /etc/sysconfig/network-scripts/ifcfg-eth2
echo "ONBOOT="        >> /etc/sysconfig/network-scripts/ifcfg-eth2
chmod 0644 /etc/sysconfig/network-scripts/ifcfg-eth2
