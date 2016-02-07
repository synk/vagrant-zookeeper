# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos/7"

  (1..3).each do |i|
    config.vm.define "zk#{i}" do |zk|
      zk.vm.network "private_network", ip: "192.168.33.#{i}0"
      zk.vm.hostname = "zk#{i}"
      zk.vm.provision "shell", path:"zookeeper.sh", args:"#{i}", privileged:false
      zk.vm.provision "shell", path:"kafka.sh", args:"#{i}", privileged:false
    end
  end
 
end
