FROM ubuntu

# update the package list
apt-get update

#Install wget 
apt-get install wget

wget https://raw.githubusercontent.com/devopsbc01/Scripts/master/Postgresql-Install-1.sh
wget https://raw.githubusercontent.com/devopsbc01/Scripts/master/tomcat.sh

RUN chmod +x Postgresql-Install-1.sh
RUN chmod +x tomcat.sh

RUN Postgresql-Install-1.sh
RUN tomcat.sh

# take the war file and copy into tomcat webapps
COPY target/*.war /var/lib/tomcat8/webapps/avncomm.war
