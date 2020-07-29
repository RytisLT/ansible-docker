FROM ubuntu:20.04
RUN apt update && apt install sshpass ansible=2.9.6+dfsg-1 -y
