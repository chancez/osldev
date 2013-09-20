# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "osldev"

  config.vm.box = "centos-6-provisionerless"
  config.vm.box_url = "http://packages.osuosl.org/vagrant/opscode_centos-6.4_provisionerless.box"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  # config.vm.network :private_network, ip: "33.33.33.10"
  # config.vm.network :public_network

  synced_folder = "/home/vagrant/projects"
  config.vm.synced_folder "/home/chance/projects", synced_folder

  config.omnibus.chef_verison = :latest
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.data_bags_path = "data_bags"
    # chef.environment = "vagrant"
    # chef.environments_path = "environments"

    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      },
      :ganeti_webmgr => {
        :synced_folder => "#{synced_folder}/ganeti_webmgr",
        :overwrite_settings => true
      }
    }

    chef.run_list = [
        "recipe[osldev::default]",
        "recipe[ganeti_webmgr::mysql]"
    ]
  end
end
