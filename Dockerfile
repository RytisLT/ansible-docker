FROM quay.io/ansible/ansible-runner:stable-2.10-latest
RUN pip3 install requests-credssp pywinrm
RUN ansible-galaxy collection install community.windows community.general
RUN ansible-galaxy collection install chocolatey.chocolatey
RUN mkdir -p /etc/ansible
RUN echo '[defaults]' >> /etc/ansible/ansible.cfg
RUN echo 'host_key_checking=false' >> /etc/ansible/ansible.cfg
