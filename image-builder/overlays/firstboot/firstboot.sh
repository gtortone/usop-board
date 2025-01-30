#!/bin/sh

echo "- +" | sfdisk -N 1 /dev/mmcblk1 --force
partprobe
resize2fs /dev/mmcblk1p1

systemctl disable firstboot.service
rm -f /etc/systemd/system/firstboot.service
rm -f /firstboot.sh
