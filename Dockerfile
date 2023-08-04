FROM openjdk:8-jdk-alpine
RUN apk --no-cache add curl
COPY target/gitPractice*.jar gitPractice.jar
#COPY build/libs/*-all.jar gitPractice.jar
EXPOSE 8080
CMD java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap \
    -Dcom.sun.management.jmxremote -noverify ${JAVA_OPTS} -jar gitPractice.jar
