#!/bin/bash
if [ "${1}" == "true" ]; then
    mkdir -p ansible-xrdp-gui
    git config --global http.sslverify false
    ansible-pull --purge --clean --force --directory="ansible-xrdp-gui" --url="https://my-git-server/ansible-xrdp-gui.git" --inventory="environments/local/inventory" playbooks/local.yml
else
    echo -e "\nThis script requires a parameter. Type 'true' if you wish to install XRDP + GUI on this server."
    echo -e "This script will run this ansible project: https://my-git-server/ansible-xrdp-gui"
    echo -e "\nUsage: ${0} true\n"
fi
