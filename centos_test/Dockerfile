FROM centos

RUN yum -y update
RUN yum -y install epel-release

WORKDIR /temp_inst

ADD commons/install_python3.sh install_python3.sh

RUN chmod +x install_python3.sh && . ./install_python3.sh