#!/bin/bash

# BIN_DIR=/usr/local/bin
BIN_DIR="."

function invoke_host {
  host_exe=$1
  echo \
    '#!/bin/bash
    ssh $VERBOSE_FLAG ${USER}@${HOSTNAME} ' " $host_exe " '$@' >> ${BIN_DIR}/${host_exe}

  chmod +x ${BIN_DIR}/${host_exe}
}

echo $@

