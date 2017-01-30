#!/bin/bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
apt-get -y install git libyaml-0-2 libyaml-dev
rvm install ruby-2.3
cd /root && git clone https://github.com/kostya/eye.git
cd /root/eye && gem build eye.gemspec && bash -c "gem install eye-*.gem"
cp /build/rc.local /etc/rc.local
find /usr/local/rvm -name "*.o" -delete
find /usr/local/rvm -name "*.rdoc" -delete
rm /usr/local/rvm/archives/*
rm -rf /usr/local/rvm/gems/ruby-2.3.3/doc/*
mkdir /etc/eye
mkdir /var/log/eye
cp /build/apps.eye /etc/eye/apps.eye
