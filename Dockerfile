FROM biplabchakraborty/ubuntu-postgres

RUN bash Postgresql-Install-1.sh

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.63/bin/apache-tomcat-8.5.63.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.63/* /usr/local/tomcat/

COPY target/*.war /usr/local/tomcat/webapps/avncomm.war

#EXPOSE 8080
#CMD /usr/local/tomcat/bin/catalina.sh run
