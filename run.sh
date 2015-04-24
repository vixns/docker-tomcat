#!/bin/sh

if [ -z "${WAR_URL}" ]; then
  echo "WAR_URL env var required" > /dev/stderr
  exit 1
fi
curl -s -k -o /usr/local/tomcat/webapps/${APP_NAME:-app}.war "${WAR_URL}"
exec catalina.sh run