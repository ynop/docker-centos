yum -y install git

git clone https://github.com/kaldi-asr/kaldi.git kaldi --origin upstream && cd kaldi

yum -y install g++ zlib1g-dev make gcc automake autoconf bzip2 wget libtool subversion python2.7 libatlas3-base python-pip

cd tools && extras/check_dependencies.sh && make && cd ..
cd src && ./configure && make depend && make && cd ..