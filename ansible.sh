#!/bin/bash -eux

# Install Ansible dependencies.
apt -y update
apt -y install python2.7-dev python-pip

# Install Ansible.
pip install ansible
