sudo service iptables stop
sudo yum install -y java-1.8.0-openjdk
cp /home/vagrant/sync/zookeeper-3.4.6.tar.gz /home/vagrant
tar xzvf zookeeper-3.4.6.tar.gz
rm zookeeper-3.4.6.tar.gz
cp /home/vagrant/sync/zoo.cfg /home/vagrant/zookeeper-3.4.6/conf/zoo.cfg
mkdir -p /tmp/zookeeper
echo $1 > /tmp/zookeeper/myid
/home/vagrant/zookeeper-3.4.6/bin/zkServer.sh start
