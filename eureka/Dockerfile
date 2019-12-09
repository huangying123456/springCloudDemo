# FROM java:8-jre
FROM fabric8/java-centos-openjdk8-jre:latest
MAINTAINER Youhujia, Inc. Backend Awesome Team
USER root
ADD build/libs/*.jar /
ADD entrypoint.sh /
VOLUME ["/tmp"]
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 1111
