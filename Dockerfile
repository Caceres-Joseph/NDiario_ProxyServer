# base image
FROM nginx:1.9


#Author
LABEL maintainer="Trambo Cloud, S.A."
LABEL author="jhosef@trambo.cloud"


COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./backend-not-found.html /var/www/html/backend-not-found.html

#COPY ./includes/ /etc/nginx/includes/

COPY ./ssl/ /etc/ssl/certs/nginx/