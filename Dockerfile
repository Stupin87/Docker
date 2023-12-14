FROM ubuntu:18.04
RUN apt update 
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install maven -y
EXPOSE 8080
CMD usr/local/tomcat/bin/catalina.sh run
WORKDIR /boxfuse-sample-java-war-hello/
COPY /boxfuse-sample-java-war-hello/ /boxfuse-sample-java-war-hello/
RUN mvn package





