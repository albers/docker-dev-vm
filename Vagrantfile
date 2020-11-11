# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "fasmat/ubuntu1804-desktop"
  config.vm.define "docker-dev"
  config.vm.hostname = "docker-dev"

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.host_vars = {
      "docker-dev" => {"ansible_python_interpreter" => "/usr/bin/python3"}
    }
  end
end
