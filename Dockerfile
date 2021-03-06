# apache with php base image 
FROM php:7.2-apache

# copy all contents to public html
COPY . /var/www/html/nanoNodeMonitor

# cleanup as we don't have a seperate public folder
RUN rm /var/www/html/nanoNodeMonitor/Dockerfile /var/www/html/nanoNodeMonitor/entry.sh

# entry shell
COPY entry.sh /entry.sh

# make it executable
RUN chmod +x /entry.sh

# go for it!
CMD ["/bin/bash", "/entry.sh"]
