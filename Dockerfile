# Version 1.0.0
# cyan.stream.Srs

#========== Basic Image ==========
From centos:6.8
MAINTAINER "DreamInSun" <yancy_chen@hotmail.com>

#========== Extension ==========


#========== Environment ==========


#========== Configuration ==========


#========== Install Application ==========
ADD SRS-CentOS6-x86_64-2.0.230 /srs
RUN yum install -y redhat-lsb
RUN chmod a+x /srs/INSTALL
RUN /srs/INSTALL

#========== Expose Ports ==========
EXPOSE 1935

#========== VOLUME ==========


#========= Add Entry Point ==========


#========= Start Service ==========

