#!/bin/bash

TARGET=/usr/local/squid

# make conf
rm -f build/*
if [ ! -d build ]; then
  mkdir build
fi

ruby generate_acls.rb > build/adblock-acls.conf

# copy conf
if [ ! -d $TARGET/etc/conf.d ]; then
  sudo mkdir $TARGET/etc/conf.d
fi

# for some local one
sudo cp etc/squid.conf $TARGET/etc
sudo cp build/*.conf /usr/local/squid/etc/conf.d
# for system one
sudo cp build/*.conf /etc/squid/conf.d

# restart squid
sudo systemctl restart squid
#sudo $TARGET/sbin/squid -f $TARGET/etc/squid.conf -k kill
#sudo $TARGET/sbin/squid -f $TARGET/etc/squid.conf

#if [ -f /etc/init.d/squid ]; then
#  sudo /etc/init.d/squid restart
#fi

#bash update-remote.sh

