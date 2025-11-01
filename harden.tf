
- name: Harden Linux Server
  hosts: web
  become: yes
  tasks:
    - name: Disable unused services
      service:
        name: telnet
        enabled: no
        state: stopped

    - name: Enforce SSH key authentication
      lineinfile:
        path: /etc/ssh/sshd_config
        regexp: '^PasswordAuthentication'
        line: 'PasswordAuthentication no'
        state: present
