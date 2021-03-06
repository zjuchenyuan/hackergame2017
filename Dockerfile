FROM python:3
MAINTAINER Hypercube <hypercube@0x01.me>
EXPOSE 80
VOLUME /hackergame/static

WORKDIR /hackergame

RUN pip install --no-cache-dir django
COPY . .
ENV DEBUG=false

CMD python3 manage.py runserver 0:80
