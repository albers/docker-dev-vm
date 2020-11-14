# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "fasmat/ubuntu1804-desktop"
  config.vm.define "docker-dev"
  config.vm.hostname = "docker-dev"

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/home/vagrant/docker-dev-vm", mount_options: ["dmode=750,fmode=640"]

  config.vm.provision "ansible_local" do |ansible|
    ansible.provisioning_path = "/home/vagrant/docker-dev-vm/ansible"
    ansible.playbook = "playbook.yml"
    ansible.galaxy_role_file = "requirements.yml"
  end
end
