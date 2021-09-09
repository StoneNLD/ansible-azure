#!/bin/bash
export AZURE_SUBSCRIPTION_ID=$(az account show | jq -r .id)
export AZURE_CLIENT_ID=$(jq -r .appId ansible-creds.json)
export AZURE_SECRET=$(jq -r .password ansible-creds.json)
export AZURE_TENANT=$(jq -r .tenant ansible-creds.json)