# Replace with your ECR repo URI
FROM 239144702963.dkr.ecr.us-west-2.amazonaws.com/cicddemo
RUN chmod +x /usr/bin
RUN rm -r /var/www/html/codepipelinedemo
RUN ls ../
COPY website /var/www/html/codepipelinedemo/website/
RUN chmod +x /var/www/html/codepipelinedemo -R
CMD apachectl -D FOREGROUND
RUN /etc/init.d/apache2 start
EXPOSE 80
