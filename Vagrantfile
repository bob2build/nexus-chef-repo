# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network", ip: "10.1.1.101"
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
     vb.gui = false

     # Customize the amount of memory on the VM:
     vb.memory = "1024"
  end
  config.vm.provision "chef_solo" do |chef|
    chef.version = "12.10.40"
    chef.roles_path = "roles"
    chef.add_role("nexus_server")
    chef.data_bags_path = "data_bags"
    chef.encrypted_data_bag_secret_key_path = './.chef/encrypted_data_bag_secret'
  end
end
