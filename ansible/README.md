# App Title

Automate the bootstrapping of the application on the EC2 instance.

## Description
Here we are using Ansible which connect to the EC2 and install the important dependencies
Then deploy the project 
Finally we need to have a certificate, end with test using a domain name
* I tried to use roles and variables to make the ansible yaml files better and more readable 
* I used automatically generated certificate, to avoid leaking the project's private key
* I added records to /etc/hosts for testing

## Getting Started

### Dependencies

* Ansible
* Python3 
* Install the requirements ```ansible-galaxy install -r requirements.txt``` when you are in the Ansible directory


### Executing program

* add the instance's Public IPv4 DNS to /etc/ansible/hosts/ in ```werb_servers``` group 
* Run ```ansible-playbook deploy-app.yaml --key-file ~/ssh/my_key.pem ```
Note: If you picked a different name/location for your EC2 keypair file, update the --key-file argument in the command above accordingly.
* Add the domain name to the /etc/hosts for testing
