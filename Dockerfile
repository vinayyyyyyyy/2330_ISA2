FROM ubuntu

RUN apt-get update 
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-flask

COPY application.py /opt/app/application.py

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
