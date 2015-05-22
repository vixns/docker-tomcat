FROM tomcat:7-jre7
MAINTAINER Stéphane Cottin <stephane.cottin@vixns.com>
COPY run.sh /run.sh
COPY server.xml /usr/local/tomcat/conf/server.xml
COPY context.xml /usr/local/tomcat/conf/context.xml
CMD ["/run.sh"]