FROM centos

RUN yum -y update
RUN yum -y install epel-release

#
#   SUPERVISOR
#
RUN yum -y install supervisor

ADD supervisord.conf /etc/supervisord.conf

#
# 
#
RUN yum clean all 

CMD ["/usr/bin/supervisord"]