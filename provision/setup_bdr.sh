#!/bin/sh

echo "Install the repository RPMs"

sudo yum install -q -y http://yum.postgresql.org/9.4/redhat/rhel-6-x86_64/pgdg-centos94-9.4-1.noarch.rpm
sudo yum install -q -y http://packages.2ndquadrant.com/postgresql-bdr94-2ndquadrant/yum-repo-rpms/postgresql-bdr94-2ndquadrant-redhat-1.0-2.noarch.rpm
#sudo yum install -q -y epel-release

echo "Install the BDR packages"

sudo yum install -q -y postgresql-bdr94-bdr

echo "Add postgres to path"
echo "PATH=/usr/pgsql-9.4/bin:$PATH" >> /etc/profile

echo "Initialize DB"
sudo /usr/pgsql-9.4/bin/postgresql94-setup initdb -D /var/lib/pgsql/9.4-bdr/data
