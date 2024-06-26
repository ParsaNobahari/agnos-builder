#!/bin/bash
apt-get install build-essential libsqlite3-dev zlib1g-dev libncurses5-dev libgdbm-dev libbz2-dev libreadline5-dev libssl-dev libdb-dev

wget http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tgz
tar -xzf Python-2.7.3.tgz
cd Python-2.7.3

./configure --prefix=/usr --enable-shared
make
make install
cd ..

update-alternatives --install /usr/bin/python python /usr/bin/python2.7 10
