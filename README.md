# Nexus Repository

Install Nexus repository as systemd service.

## Variables
Define variable of Nexus installation version in playbook `deploy_nexus.yml` : 

     nexus_version: 'nexus-3.24.0-02'

## Prerequisites
Before starting playbook you must manually generate Java keystore file `keystore.jks` using shell script `ssl_keys_generate.sh` and put it to `./files` directory.

     $ sh ssl_keys_generate.sh

## Deploy Nexus Repository

Start deployment Nexus Repository server:

     $ ansible-playbook deploy_nexus.yml

This playbook:

- install JVM 1.8.0 
- install Nexus Repository Manager as systemd service
- configuring SSL access to Nexus server ( using generated `keystore.jks` file )
