FROM maven:3.6.3-jdk-11-slim as builder
RUN apt update && apt install -y apt-transport-https ca-certificates curl gnupg lsb-release
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg -y
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/d> -y
RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello /root/boxfuse-sample-java-war-hello
WORKDIR /root/boxfuse-sample-java-war-hello

RUN mvn clean package