# Replace with your ECR repo URI
FROM 239144702963.dkr.ecr.us-west-2.amazonaws.com/cicddemo
RUN chmod +x /usr/bin
RUN rm -r /var/www/html/codepipelinedemo
COPY website /var/www/html/codepipelinedemo/website
RUN chmod +x /var/www/html/codepipelinedemo -R
EXPOSE 80
RUN /etc/init.d/apache2 start

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

# RUN /etc/init.d/apache2 start
# RUN /etc/init.d/apache2 restart
# CMD /usr/sbin/apache2ctl -D FOREGROUND


# docker stop test
# docker system prune -a -f
# rm ./dockerimage/Dockerfile -f
# nano ./dockerimage/Dockerfile

# docker build -t test ./dockerimage 
# docker create -p 80:80 --name test -t --privileged  test
# docker  start test

# docker ps -a
# docker container logs test

# docker exec -i -t  test /bin/bash

# cd /var/www/html/codepipelinedemo/website/