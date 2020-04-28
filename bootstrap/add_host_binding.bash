#!/bin/bash

# BIN_DIR=/usr/local/bin
BIN_DIR="."

function add_host_binding {
  host_exe=$1
  echo \
    '#!/bin/bash
  ssh $VERBOSE_FLAG ${USER}@${HOSTNAME} "cd $(pwd) && ' $host_exe '$@"' >> ${BIN_DIR}/${host_exe}

  chmod +x ${BIN_DIR}/${host_exe}
}


