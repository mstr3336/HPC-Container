apt-get -y update

apt-get -y install r-recommended r-base r-base-core

# For Rcurl, xml2, libmime
apt-get -y install libcurl4-openssl-dev libxml2-dev

apt-get -y install \
   libnss3 \
   libasound2\ 
   libgles2-mesa-dev

#wget -q https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1578-amd64.deb
#apt-get -y install ./rstudio-1.2.1578-amd64.deb
apt-get -y install rstudio
