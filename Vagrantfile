# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  # Create a private network
  config.vm.network "private_network", ip: "192.168.56.154"

  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "TheBox"
  end

  config.vm.provision "shell", privileged: true, inline: <<-SHELL
    apt-get update
    apt-get upgrade -y
  SHELL
  config.vm.provision :"shell", path: "bootstrap.sh"
  config.vm.provision :"shell",
      privileged: false,
      inline: 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
end
