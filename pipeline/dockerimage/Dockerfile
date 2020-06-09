# Replace with your ECR repo URI
FROM 239144702963.dkr.ecr.us-west-2.amazonaws.com/cicddemo
RUN chmod +x /usr/bin
RUN rm -r /var/www/html/codepipelinedemo
COPY website /var/www/html/codepipelinedemo/website
RUN chmod +x /var/www/html/codepipelinedemo -R
EXPOSE 80
RUN /etc/init.d/apache2 start
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

