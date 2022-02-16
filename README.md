# APPLICATION OVERVIEW
This is a simple Python web application (with flask), that shows current time in Moscow. The time is updated with a page refreshing.
## Description

Overall we were able to deploy this project into EC2 instance using terraform and ansible. the application was tested with a domain name.
We have here three parts:
* app: it contains the python file, Dockerfile and docker compose. There is a README file explained in details
* Terraform: it contains the terrraform files which used to create an instance. Also there is a README file explained in details
* Ansible: it has the ansible files which used to complete the deployment process. Also there is a README file explained in details

NOTE: The majority of self-hosted Python applications today are hosted with a WSGI server such as Gunicorn, so we use the same
NOTE: The instance is stopped now to avoid billing
## Getting Started
### Dependencies
### Executing program
Everything explained inside each folder

## Author 
This project is created by Mohammad Khalil 
