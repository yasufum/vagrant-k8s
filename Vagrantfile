# -*- mode: ruby -*-
# vi: set ft=ruby :

require "./specs"

Vagrant.configure("2") do |config|
  config.vm.box = VBOX_IMG
  config.vm.box_check_update = false
  #config.ssh.insert_key = false

  CONTROLLERS.each do |ctrl|
    config.vm.define ctrl.hostname do |server|
      server.vm.hostname = ctrl.hostname

      server.vm.network "private_network", ip: ctrl.ipaddr
      #server.vm.network "public_network", ip: ctrl.ipaddr, bridge: HOST_IF
      #server.vm.network "public_network", bridge: HOST_IF

      server.vm.provider "virtualbox" do |vb|
        vb.cpus = ctrl.cpus
        vb.memory = ctrl.mem
        vb.customize ["modifyvm", :id, "--nicpromisc1", "allow-all"]
        vb.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
      end
    end
  end

  WORKERS.each do |worker|
    config.vm.define worker.hostname do |server|
      server.vm.hostname = worker.hostname

      server.vm.network "private_network", ip: worker.ipaddr
      #server.vm.network "public_network", ip: worker.ipaddr, bridge: HOST_IF
      #server.vm.network "public_network", bridge: HOST_IF

      server.vm.provider "virtualbox" do |vb|
        vb.cpus = worker.cpus
        vb.memory = worker.mem
        vb.customize ["modifyvm", :id, "--nicpromisc1", "allow-all"]
        vb.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
      end
    end
  end

end
