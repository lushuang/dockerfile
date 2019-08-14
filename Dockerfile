FROM ubuntu:16.04

RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak

RUN echo deb http://mirrors.aliyun.com/ubuntu/ xenial main > /etc/apt/sources.list
RUN echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial main >> /etc/apt/sources.list
RUN echo deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main >> /etc/apt/sources.list
RUN echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main >> /etc/apt/sources.list
RUN echo deb http://mirrors.aliyun.com/ubuntu/ xenial universe >> /etc/apt/sources.list
RUN echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial universe >> /etc/apt/sources.list
RUN echo deb http://mirrors.aliyun.com/ubuntu/ xenial-updates universe >> /etc/apt/sources.list
RUN echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates universe >> /etc/apt/sources.list
RUN echo deb http://mirrors.aliyun.com/ubuntu/ xenial-security main >> /etc/apt/sources.list
RUN echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main >> /etc/apt/sources.list
RUN echo deb http://mirrors.aliyun.com/ubuntu/ xenial-security universe >> /etc/apt/sources.list
RUN echo deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security universe >> /etc/apt/sources.list

RUN apt-get -y update
RUN apt-get install -y tzdata
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
#WORKDIR /usr/local/src/

RUN apt-get install -y openjdk-8-jdk && apt-get install -y ffmpeg