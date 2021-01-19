#!/bin/sh
ansible-playbook -i inventory/web.yml -e "join_cmd=maria" playbook2.yml --ask-become-pass