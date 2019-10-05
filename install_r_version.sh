sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

sudo apt purge r-base r-recommended r-cran-*
sudo apt autoremove
sudo apt update

v="3.5.2-1bionic"

sudo apt-get install r-recommended=${v} r-base=${v} r-base-core=${v}

# For Rcurl, and xml2
sudo apt-get install libcurl4-openssl-dev libxml2-dev
