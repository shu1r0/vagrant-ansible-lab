# vm name prefix
$base_name = "ansible-"

# enable vm gui
$gui = true


# ------------------------------------------------------------
# Description
# ------------------------------------------------------------
$description = <<'EOS'
# Vagrantfile for ansible setting

## User and Password
user: vagrant
password: vagrant
EOS


# ------------------------------------------------------------
# vagrant configuration
# ------------------------------------------------------------
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.synced_folder './', '/home/vagrant/share', mount_options: ["dmode=775,fmode=664"]

  # ----------- Master -----------
  master_name = $base_name + "master"
  config.vm.define master_name do |master|
    master.vm.hostname = master_name
    master.vm.box = "bento/ubuntu-20.04"

    master.vm.network "private_network",virtualbox__intnet: "inet0", ip: "10.20.30.11", netmask:"255.255.255.0"

    master.vm.provision "shell", path: "scripts/common.sh"
    master.vm.provision "shell", path: "scripts/setup_master.sh"
    #   host.vm.provision 'shell', inline: <<-SCRIPT
    #       sudo apt install -y --no-install-recommends lubuntu-desktop
    #   SCRIPT

    master.vm.provider "virtualbox" do |vb|
      vb.name = master_name
      vb.gui = $gui
      vb.cpus = 2
      vb.memory = 2048
      vb.customize [
        "modifyvm", :id,
        "--vram", "32", 
        "--clipboard", "bidirectional", # clip board
        "--draganddrop", "bidirectional", # drag and drop
        "--ioapic", "on", # enable I/O APIC
        '--graphicscontroller', 'vmsvga',
        "--accelerate3d", "off",
        "--hwvirtex", "on",
        "--nestedpaging", "on",
        "--largepages", "on",
        "--pae", "on",
        '--audio', 'none',
        "--uartmode1", "disconnected",
        "--description", $description
      ]
    end
  end

  # ----------- Worker Nodes -----------
  node1_name = $base_name + "node1"
  config.vm.define node1_name do |node|
    node.vm.hostname = node1_name
    node.vm.box = "bento/ubuntu-20.04"

    node.vm.network "private_network",virtualbox__intnet: "inet0", ip: "10.20.30.12", netmask:"255.255.255.0"

    node.vm.provision "shell", path: "scripts/common.sh"
    node.vm.provision "shell", path: "scripts/setup_node.sh"

    node.vm.provider "virtualbox" do |vb|
      vb.name = node1_name
      vb.gui = $gui
      vb.cpus = 1
      vb.memory = 1024
      vb.customize [
        "modifyvm", :id,
        "--vram", "32", 
        "--clipboard", "bidirectional", # clip board
        "--draganddrop", "bidirectional", # drag and drop
        "--ioapic", "on", # enable I/O APIC
        '--graphicscontroller', 'vmsvga',
        "--accelerate3d", "off",
        "--hwvirtex", "on",
        "--nestedpaging", "on",
        "--largepages", "on",
        "--pae", "on",
        '--audio', 'none',
        "--uartmode1", "disconnected",
        "--description", $description
      ]
    end
  end

  node2_name = $base_name + "node2"
  config.vm.define node2_name do |node|
    node.vm.hostname = node2_name
    node.vm.box = "bento/ubuntu-20.04"

    node.vm.network "private_network",virtualbox__intnet: "inet0", ip: "10.20.30.13", netmask:"255.255.255.0"

    node.vm.provision "shell", path: "scripts/common.sh"
    node.vm.provision "shell", path: "scripts/setup_node.sh"

    node.vm.provider "virtualbox" do |vb|
      vb.name = node2_name
      vb.gui = $gui
      vb.cpus = 1
      vb.memory = 1024
      vb.customize [
        "modifyvm", :id,
        "--vram", "32", 
        "--clipboard", "bidirectional", # clip board
        "--draganddrop", "bidirectional", # drag and drop
        "--ioapic", "on", # enable I/O APIC
        '--graphicscontroller', 'vmsvga',
        "--accelerate3d", "off",
        "--hwvirtex", "on",
        "--nestedpaging", "on",
        "--largepages", "on",
        "--pae", "on",
        '--audio', 'none',
        "--uartmode1", "disconnected",
        "--description", $description
      ]
    end
  end
end