# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "fasmat/ubuntu1804-desktop"
  config.vm.define "docker-dev"
  config.vm.hostname = "docker-dev"

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
    ansible.galaxy_role_file = "ansible/requirements.yml"
  end
end
