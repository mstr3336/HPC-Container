apt-get -y update

apt-get -y install r-recommended r-base r-base-core

# For Rcurl, xml2, libmime
apt-get -y install libcurl4-openssl-dev libxml2-dev

apt-get -y install \
   libnss3 \
   libasound2 \
   libgles2-mesa-dev

VERSION="1.1.463-amd64"

wget -q http://download1.rstudio.org/rstudio-${VERSION}.deb
apt-get -y install ./rstudio-${VERSION}.deb

