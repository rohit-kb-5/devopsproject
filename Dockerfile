FROM centos:latest
MAINTAINER rohitkb2011@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/marvel.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip marvel.zip 
RUN cp -rvf 2115_marvel/* .
RUN rm -rf 2115_marvel loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
