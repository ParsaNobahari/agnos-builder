#!/bin/bash
apt-get install build-essential libsqlite3-dev zlib1g-dev libncurses5-dev libgdbm-dev libbz2-dev libreadline5-dev libssl-dev libdb-dev

wget http://www.python.org/ftp/python/2.7.3/Python-2.7.3.tgz
tar -xzf Python-2.7.3.tgz
cd Python-2.7.3

./configure --prefix=/usr --enable-shared
make
make install
cd ..

update-alternatives --install /usr/bin/python python /usr/bin/python2.6 20
update-alternatives --install /usr/bin/python python /usr/bin/python2.7 10
update-alternatives --set python /usr/bin/python2.6

wget --ca-certificate=/etc/ssl/certs/ca-certificates.crt http://peak.telecommunity.com/dist/ez_setup.py
python2.7 ez_setup.py
easy_install-2.7 virtualenv
