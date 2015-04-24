# docker tomcat image
Based on official image, download war on startup from $WAR_URL and name it $APP_NAME


	docker run -it -p 8888:8080 -e APP_NAME=mytest -e WAR_URL=https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war sample.war --name mytest -d vixns/tomcat
	# wait for tomcat start
 	curl http://localhost:8888/mytest