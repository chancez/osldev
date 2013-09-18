# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "osldev-berkshelf"
  config.vm.box = "Berkshelf-CentOS-6.3-x86_64-minimal"

  config.vm.box_url = "https://dl.dropbox.com/u/31081437/Berkshelf-CentOS-6.3-x86_64-minimal.box"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  # config.vm.network :private_network, ip: "33.33.33.10"
  # config.vm.network :public_network
  # config.vm.synced_folder "/home/{yourname}/projects", "/home/vagrant/projects"

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      }
    }

    chef.run_list = [
        "recipe[osldev::default]"
    ]
  end
end
