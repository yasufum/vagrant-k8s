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
      server.vm.provider "virtualbox" do |vb|
        vb.cpus = ctrl.cpus
        vb.memory = ctrl.mem
      end

      #config.vm.provision "shell", inline: <<-SHELL
      #  swapoff -a
      #  apt-get update
      #  apt-get upgrade -y

      #  wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
      #| tar zxvf nvim-linux64.tar.gz -C /usr/local
      #  curl -sL install-node.vercel.app | bash -s -- --yes
      #  npm install yarn
      #  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

      #  install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
      #  apt-get install -y docker.io
      #  apt-get install -y apt-transport-https ca-certificates curl
      #  curl -fsSL https://dl.k8s.io/apt/doc/apt-key.gpg | gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
      #  echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list

      #  apt-get update
      #  apt-get install -y kubelet kubeadm kubectl
      #  apt-mark hold kubelet kubeadm kubectl

      #  systemctl daemon-reload
      #  systemctl restart kubelet
      #SHELL
    end
  end

  WORKERS.each do |worker|
    config.vm.define worker.hostname do |server|
      server.vm.hostname = worker.hostname
      server.vm.network "private_network", ip: worker.ipaddr
      server.vm.provider "virtualbox" do |vb|
        vb.cpus = worker.cpus
        vb.memory = worker.mem
      end

      #config.vm.provision "shell", inline: <<-SHELL
      #  swapoff -a
      #  apt-get update
      #  apt-get upgrade -y

      #  install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
      #  apt-get install -y docker.io
      #  apt-get install -y apt-transport-https ca-certificates curl
      #  curl -fsSL https://dl.k8s.io/apt/doc/apt-key.gpg | gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
      #  echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list

      #  apt-get update
      #  apt-get install -y kubelet kubeadm kubectl
      #  apt-mark hold kubelet kubeadm kubectl

      #  systemctl daemon-reload
      #  systemctl restart kubelet
      #SHELL
    end
  end

end
