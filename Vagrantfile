# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.network :forwarded_port, guest: 5432, host: 15432 # postgresql
  config.vm.network :forwarded_port, guest: 3000, host: 3000 # rails app

  config.vm.provision :shell, path: 'provisions/system.sh'
  config.vm.provision :shell, path: 'provisions/locale.sh'
  config.vm.provision :shell, path: 'provisions/ruby.sh', privileged: false
  config.vm.provision :shell, path: 'provisions/postgresql.sh'
end
