# Author:Zlyang by 2017-06-12
FROM andrewvergel/centos6.8
MAINTAINER Zlyang "DBA_Master@163.com"
ENV REFRESHED_AT 2017-06-12
RUN mkdir -p /var/www/html/
RUN yum -y install epel-release
RUN yum -y install vim net-tools wget openssh-* 
RUN yum -y install nginx
RUN echo '<h1> Hello Nginx <h1>' >> /var/www/html/index.html
ADD $PWD/nginx/default.conf /etc/nginx/conf.d/
ADD $PWD/nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
