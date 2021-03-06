FROM ubuntu

# update the package list
RUN apt-get update

#Install wget 
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://raw.githubusercontent.com/devopsbc01/Scripts/master/Postgresql-Install-1.sh
RUN wget https://raw.githubusercontent.com/devopsbc01/Scripts/master/tomcat.sh

RUN chmod +x Postgresql-Install-1.sh
RUN chmod +x tomcat.sh

RUN bash Postgresql-Install-1.sh
RUN bash tomcat.sh

# take the war file and copy into tomcat webapps
COPY target/*.war /usr/local/tomcat/webapps/avncomm.war
