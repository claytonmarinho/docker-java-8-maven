FROM openjdk:8-jre

# Install maven
RUN apt-get update
RUN apt-get install -y maven

# Prepare by downloading dependencies
ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:go-offline"]

