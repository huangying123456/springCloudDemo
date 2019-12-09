FROM java:8-jre
MAINTAINER Youhujia, Inc. Backend Awesome Team
ADD build/libs/*.jar /
ADD entrypoint.sh /
VOLUME ["/tmp"]
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 5001
