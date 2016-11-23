FROM centos

RUN yum -y update
RUN yum -y install epel-release

#
#   SUPERVISOR
#
RUN yum -y install supervisor

ADD supervisord.conf /etc/supervisord.conf

#
#   START
#
CMD ["/usr/bin/supervisord"]