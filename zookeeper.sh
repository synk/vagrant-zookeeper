sudo service iptables stop
yum install -y java-1.7.0-openjdk
cp /vagrant/zookeeper-3.4.6.tar.gz .
tar xzvf zookeeper-3.4.6.tar.gz
rm zookeeper-3.4.6.tar.gz
cd zookeeper-3.4.6
ln -s /vagrant/zoo.cfg conf/zoo.cfg
mkdir -p /tmp/zookeeper
echo $1 > /tmp/zookeeper/myid
./bin/zkServer.sh start