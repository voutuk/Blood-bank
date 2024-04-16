# Було лінь піднімати віртуальні машини вручну, тому вирішив використати Vagrant (хоч він дуже повільний на windows)
Vagrant.configure("2") do |config|

    # Blood Bank Machine
    config.vm.define "UB1" do |ubuntu|
        ubuntu.vm.box = "ubuntu/bionic64"
        ubuntu.vm.hostname = "UB1"
        ubuntu.vm.network "private_network", ip: "192.168.33.10"
        ubuntu.vm.provider "virtualbox" do |v|
            v.memory = 2048
            v.cpus = 2
        end
    end

    # Database Server
    config.vm.define "OL1" do |oracle|
        oracle.vm.box = "ubuntu/bionic64" # Використовую ubuntu, бо в oracle не примонтувалась папка з файлами
        oracle.vm.hostname = "OL1"
        oracle.vm.network "private_network", ip: "192.168.33.11"
        oracle.vm.provider "virtualbox" do |v|
            v.memory = 2048
            v.cpus = 2
        end
    end
end