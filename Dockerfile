FROM nimmis/java-centos:openjdk-8-jdk
ENV TZ=Asiz/Seoul
ENV JAVA_OPTS="-server"
ARG JAVA_OPTS="-Djava.net.preferIPv4Stack=true"

CMD ["echo", $JAVA_HOME]
ADD target/sample-boot-project-0.0.1-SNAPSHOT.jar sample-boot-project.jar
EXPOSE 8080

ENTRYPOINT exec java $JAVA_OPTS -jar sample-boot-project.jar
