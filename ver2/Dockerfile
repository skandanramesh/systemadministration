FROM ubuntu
ADD genUser.sh /genUser.sh
ADD permit.sh /permit.sh
ADD schedule.sh /schedule.sh
ADD s3tcron.sh /s3tcron.sh
ADD attendance.sh /attendance.sh
ADD alia5es.sh /alia5es.sh
ADD genMom.sh /genMom.sh
ADD future.txt /future.txt
ADD attendance.log /attendance.log
RUN chmod u+x /genUser.sh
RUN chmod u+x /permit.sh
RUN chmod u+x /schedule.sh
RUN chmod u+x /s3tcron.sh
RUN chmod u+x /attendance.sh
RUN chmod u+x /alia5es.sh
RUN chmod u+x /genMom.sh
#RUN echo "deb http://cz.archive.ubuntu.com/ubuntu trusty main" >> /etc/apt/sources.list
#RUN  apt-get install -y acl
