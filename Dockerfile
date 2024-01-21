FROM 34.118.63.122:8080/alpine:latest

RUN apk update && \
    apk add maven && \
    apk dd openjdk11

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /boxfuse-sample-java-war-hello
WORKDIR /boxfuse-sample-java-war-hello

RUN mvn package