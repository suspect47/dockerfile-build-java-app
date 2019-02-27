FROM inovatrend/tomcat8-java8
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN apt-get -y install maven
#test
#test2
RUN cd boxfuse-sample-java-war-hello && mvn package
EXPOSE 8080
CMD ["catalina.sh", "run"]
