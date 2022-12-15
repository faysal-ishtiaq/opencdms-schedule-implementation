FROM python:3.9.8-slim

RUN apt-get -y update
RUN apt-get -y install curl ca-certificates gnupg git cron
RUN curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null
RUN apt-get -y update
RUN apt-get -y install postgresql-client-13

RUN mkdir /opt/project
WORKDIR /opt/project

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY start-server.sh start-server.sh

ENTRYPOINT ["bash", "start-server.sh"]
