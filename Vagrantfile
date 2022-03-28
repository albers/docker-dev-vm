# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "fasmat/ubuntu2004-desktop"
  config.vm.box_version = "22.0306.1"
  config.vm.define "docker-dev"
  config.vm.hostname = "docker-dev"

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/home/vagrant/docker-dev-vm", mount_options: ["dmode=750,fmode=640"]

  config.vm.provision "ansible_local" do |ansible|
    ansible.provisioning_path = "/home/vagrant/docker-dev-vm/ansible"
    ansible.galaxy_role_file = "requirements.yml"
    ansible.galaxy_roles_path = "/etc/ansible/roles"
    ansible.galaxy_command = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
    ansible.playbook = "playbook.yml"
  end
end
