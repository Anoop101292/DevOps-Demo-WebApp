FROM tomcat:8

# update the package list
apt-get update

#Install wget 
apt-get install wget

wget https://raw.githubusercontent.com/devopsbc01/Scripts/master/Postgresql-Install-1.sh

RUN chmod +x Postgresql-Install-1.sh

RUN Postgresql-Install-1.sh

# take the war file and copy into tomcat webapps
COPY target/*.war /usr/local/tomcat/webapps/avncomm.war
