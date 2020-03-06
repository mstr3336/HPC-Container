
# Git is mandatory, ag is useful 
apt-get -y install git wget silversearcher-ag

# vim-gtk because I want +clipboard and +X11 support
apt-get -y install vim-gtk

# ZeroMQ is needed for clustermq communication
# Add zeromq to sources

zmq_src="https://download.opensuse.org/repositories/network:/messaging:/zeromq:/release-stable/xUbuntu_18.04"
echo "deb ${zmq_src} ./" >> /etc/apt/sources.list
wget "${zmq_src}/Release.key" -O- | apt-key add

# Install zeromq
apt-get -y install libzmq3-dev
