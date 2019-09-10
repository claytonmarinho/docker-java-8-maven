FROM openjdk:14-ea-8-jdk-alpine3.10

# Install maven
RUN apt-get update
RUN apt-get install -y maven

# Prepare by downloading dependencies
ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

