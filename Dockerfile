FROM java:8 

# Install maven
RUN apt-get update
RUN apt-get install -y maven

# Add common depencencies
ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]
