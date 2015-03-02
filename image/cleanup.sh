#!/bin/bash
set -e
source /build/buildconfig
set -x

apt-get -y remove g++ g++-4.8 gcc gcc-4.8 libtool
apt-get autoremove
apt-get clean
rm -rf /build
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup

rm -f /etc/ssh/ssh_host_*
