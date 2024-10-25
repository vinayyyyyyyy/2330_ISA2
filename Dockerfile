FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask

COPY application.py /opt/app/application.py

ENV FLASK_APP=/opt/app/application.py

CMD ["flask", "run", "--host=0.0.0.0"]
