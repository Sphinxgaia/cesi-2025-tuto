FROM openjdk:8 

COPY src /home/root/javahelloworld/src

WORKDIR /home/root/javahelloworld

RUN mkdir bin && javac -d bin src/HelloWorld.java

VOLUME ["/toto"]

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
