FROM centos:8

ENV AZURE_SUBSCRIPTION_ID=$AZURE_SUBSCRIPTION_ID
ENV AZURE_CLIENT_ID=$AZURE_CLIENT_ID
ENV AZURE_SECRET=$AZURE_SECRET
ENV AZURE_TENANT=$AZURE_TENANT

COPY azure.repo /etc/yum.repos.d/azure-cli.repo

RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc 
    
RUN yum install -y gcc libffi-devel python3 epel-release && \
    yum install -y python3-pip && \
    yum install -y wget && \
    yum install -y jq && \
    yum install -y azure-cli && \
    yum clean all

RUN pip3 install --upgrade pip && \
    pip3 install ansible && \
    wget -q https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt && \
    pip3 install -r requirements-azure.txt && \
    rm requirements-azure.txt && \
    ansible-galaxy collection install azure.azcollection



    
