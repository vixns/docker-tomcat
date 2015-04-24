#!/bin/sh

if [ -z "${WAR_URL}" ]; then
  echo "WAR_URL env var required" > /dev/stderr
  exit 1
fi

curl -s -k -o /usr/local/tomcat/webapps/${APP_NAME:-ROOT}.war "${WAR_URL}"

if [ -z "${APP_NAME}"]; then
	rm -rf /usr/local/tomcat/webapps/ROOT
fi

exec catalina.sh run