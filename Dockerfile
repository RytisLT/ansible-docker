FROM ubuntu:20.04
RUN apt update && apt install -y \
    sshpass \
    ansible=2.9.6+dfsg-1 \
    vim \
    nano \
    python3-pip
RUN pip3 install requests-credssp
RUN ansible-galaxy collection install community.windows community.general
