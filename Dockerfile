FROM centos:centos6
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN yum -y update;
RUN yum -y install wget
RUN yum  -y install xz
RUN cd
RUN wget https://nodejs.org/dist/v4.4.1/node-v4.4.1-linux-x64.tar.xz
RUN tar --strip-components 1 -xvf node-v* -C /usr/local
