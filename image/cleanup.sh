#!/bin/bash
set -e
source /build/buildconfig
set -x

apt-get -y remove g++ g++-4.8 gcc gcc-4.8 libtool patch gawk make libc6-dev libreadline6-dev zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake bison pkg-config libffi-dev
apt-get -y autoremove
apt-get clean
rm -rf /build
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup

rm -f /etc/ssh/ssh_host_*
