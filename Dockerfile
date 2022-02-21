FROM ansible/ansible-runner
RUN pip3 install requests-credssp pywinrm
RUN ansible-galaxy collection install community.windows community.general
RUN mkdir -p /etc/ansible
RUN echo '[defaults]' >> /etc/ansible/ansible.cfg
RUN echo 'host_key_checking=false' >> /etc/ansible/ansible.cfg
