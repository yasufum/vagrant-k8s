# vagrant-k8s

Setup k8s VM cluster with vagrant.

## Usage

### Launch VMs

Edit `specs.rb` defines specs of each VM nodes first.
You're required to specify specs as a list of contoller and worker nodes.

```rb
CONTROLLERS = [
  K8sNode.new("controller", user, "192.168.56.101", 4, 8*1024)
]

WORKERS = [
  K8sNode.new("worker1", user, "192.168.56.201", 4, 4*1024),
  K8sNode.new("worker2", user, "192.168.56.202", 4, 4*1024)
]
```

`Vagrantfile` is designed to include the specs and do all configuration for
k8s cluster while running `vagrant up`,
so you don't need to edit `Vagrantfile` itself.
Run the command then.

```sh
$ vagrant up
```
