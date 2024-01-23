FROM eclipse-temurin:17-jdk-alpine

RUN apk update && \
    apk add maven && \
    apk add openjdk17 && \
    apk add git

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /root/boxfuse-sample-java-war-hello
WORKDIR /root/boxfuse-sample-java-war-hello
RUN mvn clean package