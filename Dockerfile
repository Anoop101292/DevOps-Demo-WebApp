FROM ubuntu


RUN wget https://raw.githubusercontent.com/devopsbc01/Scripts/master/Postgresql-Install-1.sh
RUN wget https://raw.githubusercontent.com/devopsbc01/Scripts/master/tomcat.sh

RUN chmod +x Postgresql-Install-1.sh
RUN chmod +x tomcat.sh

RUN Postgresql-Install-1.sh
RUN tomcat.sh

# take the war file and copy into tomcat webapps
COPY target/*.war /usr/local/tomcat/webapps/avncomm.war
