#!/bin/sh

echo "Install the repository RPMs"

#sudo yum install -q -y http://yum.postgresql.org/9.4/redhat/rhel-6-x86_64/pgdg-centos94-9.4-1.noarch.rpm
sudo yum install -q -y http://packages.2ndquadrant.com/postgresql-bdr94-2ndquadrant/yum-repo-rpms/postgresql-bdr94-2ndquadrant-redhat-1.0-2.noarch.rpm

###########################################

echo "Install the BDR packages"

#sudo yum install -q -y postgresql-bdr94-bdr

# Instead of installing from yum command above, simlulate a installing offline from downloaded packages
curl -O http://packages.2ndquadrant.com/postgresql-bdr94-2ndquadrant/yum/redhat-6-x86_64/postgresql-bdr94-9.4.4_bdr1-1_2ndQuadrant.el6.x86_64.rpm
curl -O http://packages.2ndquadrant.com/postgresql-bdr94-2ndquadrant/yum/redhat-6-x86_64/postgresql-bdr94-bdr-0.9.2-1_2ndQuadrant.el6.x86_64.rpm
curl -O http://packages.2ndquadrant.com/postgresql-bdr94-2ndquadrant/yum/redhat-6-x86_64/postgresql-bdr94-contrib-9.4.4_bdr1-1_2ndQuadrant.el6.x86_64.rpm
curl -O http://packages.2ndquadrant.com/postgresql-bdr94-2ndquadrant/yum/redhat-6-x86_64/postgresql-bdr94-libs-9.4.4_bdr1-1_2ndQuadrant.el6.x86_64.rpm
curl -O http://packages.2ndquadrant.com/postgresql-bdr94-2ndquadrant/yum/redhat-6-x86_64/postgresql-bdr94-server-9.4.4_bdr1-1_2ndQuadrant.el6.x86_64.rpm
curl -O http://mirror.csclub.uwaterloo.ca/centos/6.7/os/x86_64/Packages/libxslt-1.1.26-2.el6_3.1.x86_64.rpm

sudo rpm -ivh *.rpm

############################################

echo "Add postgres to path"
echo "PATH=/usr/pgsql-9.4/bin:$PATH" >> /etc/profile

echo "Initialize DB"
sudo /usr/pgsql-9.4/bin/postgresql94-setup initdb -D /var/lib/pgsql/9.4-bdr/data

