FROM openjdk:8-jre

# Install maven
RUN apt-get update
RUN apt-get install -y maven
