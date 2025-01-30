#!/bin/sh

cd /opt
git clone https://github.com/gtortone/b2-eclmon.git

ln -s /opt/b2-eclmon/client/src /opt/collectd-plugins

