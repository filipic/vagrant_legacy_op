# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    # box definitions
    config.vm.box = "precise64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    # provisioning script
    config.vm.provision :shell, :path => "provisioning/bootstrap.sh"

    # configure nfs export (performance)
    # NFS exports need an explicitly-defined IP,
    # so create a private, NFS-dedicated network on 192.168.10.x
    # config.vm.synced_folder ".", "/vagrant", :nfs => true
    config.vm.synced_folder "../openparlamento", "/openparlamento", :nfs => true
    config.vm.network :private_network, ip: "192.168.10.2"

    # all requests to host:8680 are forwarded to guest:80
    config.vm.network :forwarded_port, guest: 80, host: 8680

    # assign memory and CPU as needed
    config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", "1024"]
      v.customize ["modifyvm", :id, "--cpus", "2"]
    end

end

