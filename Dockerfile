FROM python:3.8-alpine
MAINTAINER Carlos Nunez <dev@carlosnunez.me>
ARG APP_NAME=my_awesome_app

COPY ./requirements.txt /requirements.txt
RUN apk add postgresql-dev gcc python3-dev musl-dev py3-psutil linux-headers
RUN pip install -r /requirements.txt

COPY . /app
WORKDIR /app
ENV PYTHONPATH=/app
ENTRYPOINT python -m "$APP_NAME"
