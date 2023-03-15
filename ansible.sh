#!/bin/bash

# Install dockutil
brew install hpedrorodrigues/tools/dockutil

# Install Ansible
brew install ansible

# Get playbook
git clone https://github.com/davidbarton/ansible-collection-mac.git ansible_collections/davidbarton/mac
cd ansible_collections/davidbarton/mac
git switch dev

# Install Ansible Galaxy dependencies
ansible-galaxy install -r tests/requirements.yml

# Run playbook
ANSIBLE_CONFIG=tests/ansible.cfg ANSIBLE_COLLECTIONS_PATHS=../../../ ansible-playbook tests/main.yml --tags=all
