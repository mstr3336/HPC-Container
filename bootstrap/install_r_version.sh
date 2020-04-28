apt-get -y update

apt-get -y install wget

echo "deb https://cloud.r-project.org/bin/linux/ubuntu xenial-cran35/" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 &&  apt update

apt-get -y install r-recommended r-base r-base-core

# For Rcurl, xml2, libmime
apt-get -y install libcurl4-openssl-dev libxml2-dev

