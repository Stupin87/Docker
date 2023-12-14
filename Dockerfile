FROM ubuntu:18.04
RUN apt update 
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install maven -y
WORKDIR /boxfuse-sample-java-war-hello/
COPY //boxfuse-sample-java-war-hello/ /boxfuse-sample-java-war-hello/
RUN mvn package
WORKDIR /target/
COPY /target/hello-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]



