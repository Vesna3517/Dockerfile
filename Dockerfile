FROM ubuntu:18.04
RUN apt update
RUN sudo apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install maven -y
RUN apt install git -y
EXPOSE 8888
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
RUN mvn package
CMD ["boxfuse run target/hello-1.0.war"]
