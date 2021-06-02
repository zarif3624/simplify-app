# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

ENV FLASK_APP=my_first_flask.py

WORKDIR /my_first_flask.py

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .


CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]