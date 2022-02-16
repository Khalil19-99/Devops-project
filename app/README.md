# App Title

Flask Application to show time in Moscow

## Description

In this part, I'm using python/flask as a framework, doing a simple webserver to show the current time in Moscow. The time is updated with a page refreshing.
here we have the following:
* app.py: the python file contain a simple function to get the time, and render the page
* requirements: it contains the important library which we need to download them
* template: a simple HTML file, just to make the page clear
* Dockerfile: dockerize the app
* docker-compose: needed for the deployment

I was trying as much as possible to use "best practice" for dockerfile doing the following:
* using linter tool to analyze and parses the Dockerfile and warns when it doesn't match best practices or guidelines
* using Slim image as When it comes to building Docker containers, we should always strive for smaller images, it helps to be faster in transfer and deploy
* using ```USER```: service can run without privileges, we need ```USER``` to change to a non-root user and this help as to apply least privileged as much as we can

## Getting Started

### Dependencies

* Linux/Unix OS
* Docker (to run application from docker image)
* Free port 8000

### Executing program
To excute the program you need to go to the  /app directory and run the following from the terminal:

```
python3 -m venv venv
. venv/bin/activate
pip install -r requirements.txt
export FLASK_APP=app.py
gunicorn -b 127.0.0.1:8000 app:app
```

then check the localhost in port:8000

Note: if you want to build and run the image locally, you must have a certificate in the path specified in the file.
