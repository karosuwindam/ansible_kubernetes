#!/bin/sh
ansible-playbook -i inventory/web.yml playbook.yml --ask-become-pass