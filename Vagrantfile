# -*- mode: ruby -*-

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.forward_port 80, 8080

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    %w[cron nginx].each do |recipe|
      chef.add_recipe recipe
    end
  end
end
