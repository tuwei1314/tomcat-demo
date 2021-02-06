FROM tuwei1314.cn:8443/demo/tomcat:v1
LABEL maintainer tuwei
RUN rm -rf /usr/local/tomcat/webapps/*
ADD target/*.war /usr/local/tomcat/webapps/ROOT.war 
