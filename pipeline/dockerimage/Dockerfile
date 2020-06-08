# Replace with your ECR repo URI
FROM 239144702963.dkr.ecr.us-west-2.amazonaws.com/cicddemo@sha256:da9f5a46ca6bdc4db5f4a4750bcb496d690e2f7a2cae7265a92929dae4afbc25
RUN chmod +x /usr/bin
RUN rm -r /var/www/html/codepipelinedemo
RUN ls ../
COPY website /var/www/html/codepipelinedemo/website/
RUN chmod +x /var/www/html/codepipelinedemo -R
EXPOSE 80



# RUN /etc/init.d/apache2 start
# RUN /etc/init.d/apache2 restart

# CMD /usr/sbin/apache2ctl -D FOREGROUND
