# -*- mode: ruby -*-

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.forward_port 80, 8080

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"
    chef.add_recipe "cron"
    chef.add_recipe "apache2"
  end
end
