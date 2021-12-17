FROM ubuntu:20.04
RUN apt-get update && apt install software-properties-common -y && apt-get clean all
RUN apt install curl python3-pip -y
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt install terraform=1.0.11
RUN pip install ansible==4.8.0
