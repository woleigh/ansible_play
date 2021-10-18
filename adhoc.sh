#!/bin/bash
UL="ansible_user=root ansible_password=password"
ansible all -m user -a "name=automation state=present" -e "$UL"
ansible all -m file -a "path=/etc/sudoers.d/ state=directory" -e "$UL"
ansible all -m copy -a "content='automation ALL=(ALL) NOPASSWD: ALL' dest=/etc/sudoers.d/automation" -e "$UL"
ansible all -m authorized_key -a "user=automation state=present key={{ lookup('file', '/home/automation/.ssh/id_rsa.pub') }}" -e "$UL"
