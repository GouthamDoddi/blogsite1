FROM python:alpine3.10
MAINTAINER WaterBottle

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /blogsite1
WORKDIR /blogsite1
COPY ./not_first_project /blogsite1

RUN adduser -D user1
USER user1