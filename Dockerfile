FROM 10.0.2.16:5000/centos:jdk
ARG app
ADD $app app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
