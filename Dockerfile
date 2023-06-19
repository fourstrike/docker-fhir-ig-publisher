FROM ubuntu:rolling

RUN apt-get update
RUN apt-get -y install ruby-full build-essential openjdk-20-jre curl npm
RUN gem install jekyll
RUN npm install -g fsh-sushi
RUN mkdir /app
RUN curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o /app/publisher.jar
RUN mkdir -p /root/.fhir/packages

ENTRYPOINT [ "java", "-jar", "/app/publisher.jar"]