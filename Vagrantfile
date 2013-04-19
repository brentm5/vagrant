# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu_1204_32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.hostname = "redis"
  config.vm.network :private_network, ip: "192.168.50.1"

  config.vm.provider :virtualbox do |vb|
     vb.gui = false
     vb.customize ["modifyvm", :id, "--memory", "350"]
  end
  
   config.vm.provision :puppet do |puppet|
     puppet.options = ["--verbose","--debug"]
     puppet.module_path = "puppet/modules"
     puppet.manifests_path = "puppet/manifests"
     puppet.manifest_file  = "init.pp"
   end
end
