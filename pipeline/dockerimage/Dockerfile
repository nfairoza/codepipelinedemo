# Replace with your ECR repo URI
FROM 239144702963.dkr.ecr.us-west-2.amazonaws.com/cicddemo
#RUN apt update -y && apt upgrade -y
RUN chmod +x /usr/bin
RUN rm -r /var/www/html/website
RUN ls ../
COPY drupalsite /var/www/html/website
RUN chmod +x /var/www/html/website -R
RUN /etc/init.d/apache2 reload
EXPOSE 80
