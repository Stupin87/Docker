FROM ubuntu:18.04
RUN apt update
RUN apt install -y maven 
RUN apt install -y git 
WORKDIR /home/keglia/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/keglia/boxfuse-sample-java-war-hello
RUN mvn package
RUN mv /home/keglia/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps