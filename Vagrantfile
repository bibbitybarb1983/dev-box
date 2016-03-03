Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "shell" do |sh|
      sh.privileged = true
      sh.inline = "bash /vagrant/provision-root.sh"
  end
end
