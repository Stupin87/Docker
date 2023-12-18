FROM ubuntu:18.04
USER root
RUN apt update
RUN apt install -y default-jdk
RUN apt install -y maven 
WORKDIR /home/keglia/Docker/docker-compouse/app/boxfuse-sample-java-war-hello
RUN mvn package

