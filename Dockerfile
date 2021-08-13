FROM ubuntu
ADD genUser.sh /genUser.sh
ADD permit.sh /permit.sh
ADD schedule1.sh /schedule1.sh
ADD schedule2.sh /schedule2.sh
ADD attendance.sh /attendance.sh
ADD alia5es.sh /alia5es.sh
RUN chmod u+x /genUser.sh
RUN chmod u+x /permit.sh
RUN chmod u+x /schedule1.sh
RUN chmod u+x /schedule2.sh
RUN chmod u+x /attendance.sh
RUN chmod u+x /alia5es.sh
