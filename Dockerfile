# syntax=docker/dockerfile:1
FROM httpd:2.4
COPY ./website/ /usr/local/apache2/htdocs/