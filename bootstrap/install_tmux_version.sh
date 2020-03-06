VERSION="3.0a"

# Tmux dependencies
apt-get -y install wget tar libevent-dev libncurses-dev

# https://github.com/tmux/tmux/releases/download/3.0a/tmux-3.0a.tar.gz
wget "https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz"
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz

cd tmux-${VERSION}
./configure && make
make install

cd ..
mv tmux-${VERSION} /usr/local/src


