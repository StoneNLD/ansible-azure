# ansible-azure
Ansible stuff on Azure

#Create Service Principle and write secret to gitignored file
1. az ad sp create-for-rbac --name <service-principal-name> > ansible-creds.json

#Source the need secrets for th generated creds file
2. . export-creds.sh

#Substitude the sourced sercets to the dockerfile ENV and build the image
3. envsubst < Dockerfile | docker build -t ansible . -f -

#Run the ansible Image
4. docker run -it ansible

#Test ansible to azure with a create ResourceGroup oneliner
5. ansible localhost -m azure_rm_resourcegroup -a "name=<resource_group_name> location=<resource_group_location>"

