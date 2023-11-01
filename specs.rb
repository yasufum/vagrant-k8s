# The total number of nodes is sum of 1(controller node) + NUM_WORKER(worker nodes)
VBOX_IMG = "bento/ubuntu-22.04"
HOST_IF = "enp7s0"
user = "vagrant"

class K8sNode
  attr_reader :hostname, :user, :ipaddr, :cpus, :mem
  def initialize(hn, user, ipa, cpus, mem, provider="virtualbox")
    @hostname = hn
    @user = user
    @ipaddr = ipa
    @cpus = cpus
    @mem = mem
    @provider = provider
  end

  def keypath()
    ".vagrant/machines/#{@hostname}/#{@provider}/private_key"
  end
end

CONTROLLERS = [
  K8sNode.new("controller", user, "192.168.56.190", 4, 4*1024)
  #K8sNode.new("controller", user, "192.168.1.190", 4, 8*1024)
]

WORKERS = [
  K8sNode.new("worker1", user, "192.168.56.191", 4, 4*1024),
  #K8sNode.new("worker2", user, "192.168.56.192", 4, 4*1024),
  #K8sNode.new("worker1", user, "192.168.1.191", 4, 4*1024),
  #K8sNode.new("worker2", user, "192.168.1.192", 4, 4*1024),
]
