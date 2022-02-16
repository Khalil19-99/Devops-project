# App Title

Write IaC to provision a VM with AWS

## Description

In this part, I'm using Terraform as IaC, to provide an EC2 instance on my private account on AWS console
with each new instance, it's always preferable to create a new security group, and that's what I did
Here we have two several files:
* main.tf: here we specify the provide "aws" and we initialize the instance with its essential properties. The specified image is for Ubuntu 20.04.
* security_group.tf: creating simple security group with 3 ingress ["Https", "Http", "ssh"] and with Tcp protocol. this group is used for creating the instance
## Getting Started

### Dependencies

* AWS-CLI (configure the user credintial)
* Terraform (run the files)

### Executing program
To execute the program you need to go to the  /terraform directory and do the following:
* First you need to Configuring the AWS CLI in your local machine:
    - run ```aws configure ``` and write your credentials (```Access key, Secret Key```)
* You will also need to create an SSH keypair in the AWS management console for SSH access to your server.
* Then, run the following commands:
    - terraform init
    - terraform plan
    - terraform apply

after passing the execution steps, check instances in the aws,  there must be a new ec2 instance creating
