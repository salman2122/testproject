FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN rm -rf /var/www/html/index.html
COPY index.html /var/www/html
CMD apachectl -D FOREGROUND

