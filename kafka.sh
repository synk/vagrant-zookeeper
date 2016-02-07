#!/usr/bin/env bash

echo '192.168.33.10  zk1' | sudo tee --append /etc/hosts
echo '192.168.33.20  zk2' | sudo tee --append /etc/hosts
echo '192.168.33.30  zk3' | sudo tee --append /etc/hosts

sleep 5s

cd /home/vagrant
tar xzvf /home/vagrant/sync/kafka_2.11-0.9.0.0.tgz

sleep 5s

cd /home/vagrant/kafka_2.11-0.9.0.0/
bin/kafka-server-start.sh /home/vagrant/sync/server-$1.properties &

sleep 5s

sudo yum -y install unzip

cd /home/vagrant
unzip sync/kafka-manager-1.3.0.4.zip

cd /home/vagrant/kafka-manager-1.3.0.4/
sudo bin/kafka-manager -Dconfig.file=/home/vagrant/sync/kafka-manager-application.conf &

