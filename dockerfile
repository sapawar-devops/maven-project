FROM tomcat:8
COPY /var/lib/jenkins/workspace/docker-ci-cd/webapp/target/webapp.war /usr/local/tomcat/webapps/
