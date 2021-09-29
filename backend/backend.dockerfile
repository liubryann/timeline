FROM ubuntu:latest

WORKDIR /app

RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev

COPY ./requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

CMD ["python3", "run.py"]