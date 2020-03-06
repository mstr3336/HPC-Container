
# Git is mandatory, ag is useful 
apt-get -y install git wget \
  silversearcher-ag \
  build-essential


# DIY vim because I want +clipboard and +X11 support
git clone https://github.com/vim/vim.git /bootstrap/vim

cd /bootstrap/vim/src
./configure && make
make install

cd /bootstrap

# ZeroMQ is needed for clustermq communication
# Add zeromq to sources

zmq_src="https://download.opensuse.org/repositories/network:/messaging:/zeromq:/release-stable/xUbuntu_18.04"
echo "deb ${zmq_src} ./" >> /etc/apt/sources.list
wget "${zmq_src}/Release.key" -O- | apt-key add

# Install zeromq
apt-get -y install libzmq3-dev
