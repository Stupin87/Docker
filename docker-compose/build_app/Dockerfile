FROM ubuntu:18:04
USER root
RUN apt update
RUN apt install -y default-jdk
RUN apt install -y maven 
WORKDIR /app/boxfuse-sample-java-war-hello
RUN mvn package
RUN mv /home/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps
