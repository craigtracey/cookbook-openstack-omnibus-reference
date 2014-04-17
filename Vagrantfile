# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don"t touch unless you know what you"re doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.box = "precise64-chef11"
  config.vm.box_url = "http://grahamc.com/vagrant/ubuntu-12.04-omnibus-chef.box"
  config.berkshelf.enabled = true

  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "recipe[apt::default]"
    chef.add_recipe "recipe[omnibus-openstack-reference::default]"
    chef.add_recipe "recipe[openstack-omnibus::default]"
    chef.add_recipe "recipe[openstack-identity::server]"
    chef.add_recipe "recipe[openstack-image::api]"

    chef.json = {
      "mysql" => {
        "bind_address" => "0.0.0.0",
        "server_debian_password" => "password",
        "server_root_password" => "password",
        "server_repl_password" => "password"
      },
      "openstack" => {
        "developer_mode" => true,
        "memcached_servers" => [],

        "omnibus" => {
          "enabled_services" => %w(identity image.glance-api)
        }
      },
      "omnibus-openstack-reference" => {
        "apt_repo_url" => "#{ENV['OMNIBUS_APT_REPO']}",
        "apt_key_server" => "#{ENV['OMNIBUS_APT_KEY_SERVER']}",
        "apt_key" => "#{ENV['OMNIBUS_APT_KEY']}"
      }
    }
  end

end
