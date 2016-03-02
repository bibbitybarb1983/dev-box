Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "shell" do |sh|
      sh.privileged = true
      sh.inline = "bash /vagrant/provision.sh"
  end

  # working around this issue https://github.com/mitchellh/vagrant/issues/5186
  config.ssh.insert_key = false

end
