FROM ynop/centos_supervisor

#
#	SSH
#
RUN yum -y install openssh-server openssh-clients

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config && \
    sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

EXPOSE 22

#
#	SUPERVISOR
#
ADD supervisord.conf /etc/supervisord.conf