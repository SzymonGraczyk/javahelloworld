FROM java:7
MAINTAINER test
ENV FOO bar

COPY HelloWorld.java /home/root/src/HelloWorld.java
WORKDIR /home/root/
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]