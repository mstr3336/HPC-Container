apt-get -y update

apt-get -y install wget

echo "deb https://cloud.r-project.org/bin/linux/ubuntu xenial-cran35/" >> /etc/apt/sources.list

gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
gpg -a --export E298A3A825C0D65DFD57CBB651716619E084DAB9 | apt-key add -

apt-get -y update
apt-get -y upgrade

apt-get -y install r-recommended r-base r-base-core r-base-dev 

# For Rcurl, xml2, libmime
apt-get -y install libcurl4-openssl-dev libxml2-dev

