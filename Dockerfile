FROM --platform=linux/amd64 python:3.11.4-bullseye@sha256:f0669a0a322355734fdad929897373e5c4a36fc5bd6f97559aa15a151cae4977
ENV PYTHONUNBUFFERED 1
# RUN apt-get update && apt-get install -y gettext python3-wand libpq-dev ffmpeg redis-server build-essential libssl-dev libffi-dev python-dev gdal-bin
RUN mkdir /code
WORKDIR /code
RUN pip3 install setuptools==45
ADD app/requirements.txt /code/
RUN pip3 install -r requirements.txt
ADD app /code
