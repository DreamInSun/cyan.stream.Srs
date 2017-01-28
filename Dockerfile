# Version 1.0.0
# cyan.stream.Srs

#========== Basic Image ==========
From centos:6.8
MAINTAINER "DreamInSun" <yancy_chen@hotmail.com>

#========== Extension ==========


#========== Environment ==========


#========== Configuration ==========


#========== Install Application ==========
ADD install /install
RUN RPM -ivh /install/redhat-lsb-core-4.0-7.el6.centos.x86_64.rpm
RUN chmod a+x /install/SRS-CentOS6-x86_64-2.0.230/INSTALL
#RUN sudo /install/SRS-CentOS6-x86_64-2.0.230/INSTALL

ADD conf /srs/conf


#========== Expose Ports ==========
EXPOSE 1935
EXPOSE 18080
EXPOSE 1985

#========== VOLUME ==========


#========= Add Entry Point ==========
ADD shell /shell
RUN chmod a+x /shell/*

#========= Start Service ==========
#ENTRYPOINT ["/shell/docker-entrypoint.sh"] 
CMD /bin/bash