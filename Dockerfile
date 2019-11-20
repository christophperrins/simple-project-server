FROM java:8-jdk-alpine

COPY ./target/notes.jar /usr/app/

ENTRYPOINT ["java","-jar","usr/app/notes.jar"]

