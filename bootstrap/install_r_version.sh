apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

apt-get update

apt-get install -y r-recommended r-base r-base-core

# For Rcurl, and xml2
apt-get install -y libcurl4-openssl-dev libxml2-dev

wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1578-amd64.deb
dpkg -i rstudio-1.2.1578-amd64.deb
apt-get -f install
