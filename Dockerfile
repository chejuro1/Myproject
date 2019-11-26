FROM ubuntu:lastest

RUN apt-get update
RUN apt-get install apache2
ADD index.html ./var/www/html
EXPOSE  80
ENTRYPOINT apache2


