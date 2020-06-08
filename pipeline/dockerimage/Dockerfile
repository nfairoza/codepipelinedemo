# Replace with your ECR repo URI
FROM 239144702963.dkr.ecr.us-west-2.amazonaws.com/cicddemo@sha256:e8c3b1689642f58b89ada8473289e133d0415003f0fedda337748183f4e12ccc
RUN chmod +x /usr/bin
RUN rm -r /var/www/html/codepipelinedemo
RUN ls ../
COPY website /var/www/html/codepipelinedemo/website/
RUN chmod +x /var/www/html/codepipelinedemo -R
EXPOSE 80



# RUN /etc/init.d/apache2 start
# RUN /etc/init.d/apache2 restart

# CMD /usr/sbin/apache2ctl -D FOREGROUND
