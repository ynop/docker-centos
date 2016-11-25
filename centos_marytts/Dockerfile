FROM ynop/centos_supervisor

#
#   JAVA
#

WORKDIR /temp_inst

ADD commons/install_jre.sh install_jre.sh

RUN chmod +x install_jre.sh && . ./install_jre.sh

ENV JAVA_HOME=/usr/java/jre1.8.0_112
ENV PATH=$PATH:$JAVA_HOME

#
#   MARYTTS
#
ENV version="5.2"
ENV marytts=/marytts

RUN yum -y install wget unzip default-jre

RUN wget https://github.com/marytts/marytts-installer/archive/v$version.zip && unzip v$version.zip && rm v$version.zip
RUN mv marytts-installer-$version $marytts

WORKDIR $marytts

ADD install_voices.sh $marytts/install_voices.sh

RUN chmod +x install_voices.sh && ./install_voices.sh

EXPOSE 59125

#
#   SUPERVISOR
#
ADD supervisord.conf /etc/supervisord.conf

#
#
#
RUN yum clean all 