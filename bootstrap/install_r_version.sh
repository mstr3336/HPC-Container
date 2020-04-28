apt-get -y update

apt-get -y install wget

echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" |  tee -a /etc/apt/sources.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | apt-key add

apt-get -y install r-recommended r-base r-base-core

# For Rcurl, xml2, libmime
apt-get -y install libcurl4-openssl-dev libxml2-dev

