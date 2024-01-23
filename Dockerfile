FROM eclipse-temurin:11-jdk as builder

RUN apt update
RUN apt install maven -y
RUN apt install git -y 
RUN apt install -y default-jdk

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /root/boxfuse-sample-java-war-hello
WORKDIR /root/boxfuse-sample-java-war-hello
RUN mvn package