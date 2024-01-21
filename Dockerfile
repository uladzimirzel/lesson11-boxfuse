FROM 34.118.63.122:8080/alpine:latest

RUN apk update && \
    apk add maven && \
    apk dd openjdk11

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /boxfuse-sample-java-war-hello


RUN apt update && apt install -y apt-transport-https ca-certificates curl gnupg lsb-release
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io
WORKDIR /boxfuse-sample-java-war-hello

RUN mvn package
