FROM tomcat:8
#define working dir
WORKDIR /var/lib/jenkins/workspace/docker-ci-cd/webapp/target
COPY webapp.war /usr/local/tomcat/webapps/
