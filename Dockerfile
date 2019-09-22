FROM java:8
VOLUME /tmp
ADD target/app-1.0-SNAPSHOT.jar app.jar
EXPOSE 8443
RUN bash -c ‘touch /app.jar’
ENTRYPOINT [“java”,”-Dspring.data.mongodb.uri=mongodb://mongo/test”, “-Djava.security.egd=file:/dev/./urandom”,”-jar”,”/app.jar”]