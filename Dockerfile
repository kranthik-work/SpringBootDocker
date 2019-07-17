FROM java:8
MAINTAINER kranthikiran.kalletla@gmail.com
VOLUME /tmp
ADD spring-docker-aws-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]