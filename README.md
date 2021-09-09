# ansible-azure
Ansible stuff on Azure

1. az ad sp create-for-rbac --name <service-principal-name>

2. docker build . -t ansible

3. docker run -it ansible

4. export AZURE_SUBSCRIPTION_ID=<subscriptionId>
export AZURE_CLIENT_ID=<servicePrincipal-appId>
export AZURE_SECRET=<servicePrincipal-password>
export AZURE_TENANT=<tenantId>

