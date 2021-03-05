FROM tomcat:8

# take the war file and copy into tomcat webapps
COPY target/*.war /usr/local/tomcat/webapps/avncomm.war
