#!/bin/sh
ansible-playbook -i docker_file/inventory/web.yml playbook.yml --ask-become-pass