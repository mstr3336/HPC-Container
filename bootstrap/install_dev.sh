
# Git is mandatory, ag is useful 
apt-get -y install git wget  apt-transport-https \
  silversearcher-ag \
  build-essential \
  ctags \
  libssl-dev

# Need ncurses for vim
apt-get -y install \
  libncurses-dev \
  libx11-dev libxtst-dev libxt-dev libsm-dev libxpm-dev

git clone https://github.com/vim/vim.git

pushd vim/src
./configure \
  --enable-cscope \
  --enable-gui=auto \
  --enable-gtk2-check \
  --enable-gnome-check \
  --with-features=huge \
  --with-x
make install
popd

# vim-gtk because I want +clipboard and +X11 support
# https://github.com/tmux/tmux/releases/download/3.0a/tmux-3.0a.tar.gz
apt-get -y install tmux

# ZeroMQ is needed for clustermq communication
# Add zeromq to sources

zmq_src="https://download.opensuse.org/repositories/network:/messaging:/zeromq:/release-stable/xUbuntu_18.04"
echo "deb ${zmq_src} ./" >> /etc/apt/sources.list
wget "${zmq_src}/Release.key" -O- | apt-key add

# Install zeromq
apt-get -y install libzmq3-dev
