FROM ynop/centos_supervisor

#
#	SSH
#
RUN yum -y install openssh-server openssh-clients

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

ADD sshd_config /etc/ssh/sshd_config

EXPOSE 55522

RUN echo "root:root" | chpasswd

#
#	SUPERVISOR
#
ADD supervisord.conf /etc/supervisord.conf