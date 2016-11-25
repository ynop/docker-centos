
yum -y install wget

download_file_name="jre-8u112-linux-x64.rpm"
download_url="http://download.oracle.com/otn-pub/java/jdk/8u112-b15/$download_file_name"

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" $download_url

rpm -ivh $download_file_name

export JAVA_HOME=/usr/java/jdk1.8.0_25/
export PATH=$PATH:$JAVA_HOME