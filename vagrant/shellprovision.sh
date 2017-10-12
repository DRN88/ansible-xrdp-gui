#!/bin/bash
# Vagrant Shell Provision

yum -y install epel-release openssh-server htop git ansible
yum -y upgrade

hostnamectl set-hostname ${1}

cat << 'EOT' > /etc/hosts
127.0.0.1 localhost localhost.localdomain localhost4 localhost4.localdomain4
::1       localhost localhost.localdomain localhost6 localhost6.localdomain6
192.168.123.10 ${1}
EOT

echo "THIS WILL TAKE A WHILE"
echo "THIS WILL TAKE A WHILE"
echo "THIS WILL TAKE A WHILE"
echo "THIS WILL TAKE A WHILE"
echo "THIS WILL TAKE A WHILE"
sudo ansible-pull --purge --clean --force --url="https://github.com/DRN88/ansible-xrdp-gui.git" --checkout="master" --inventory="environments/local/inventory" playbooks/local.yml
