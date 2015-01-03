#!/bin/bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm install ruby-2.1
gem install eye
cp /build/rc.local /etc/rc.local
mkdir /etc/eye
mkdir /var/log/eye
cp /build/apps.eye /etc/eye/apps.eye
