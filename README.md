# vagrant-bdr-multimaster
Vagrant configuration to test multi-master Bi-Directional Replication (BDR), Postgres 9.4

This project follows the BDR setup instructions on 
http://bdr-project.org/docs/0.9.0/installation-packages.html

It uses the 2creatives centos 6.5 box as a base
https://github.com/2creatives/vagrant-centos/releases/tag/v6.5.3

To create a two node environement
```
vagrant up
```

To destroy/clean up both VMs
```
vagrant destroy --force
```