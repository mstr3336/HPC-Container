#!/bin/bash
source ./add_host_binding.bash

TEST_BIN_DIR=new_bin

hpc_binaries=( $(cat hpc_host_bin_list) )

mkdir $TEST_BIN_DIR
pushd $TEST_BIN_DIR

for host_bin in ${hpc_binaries[@]}; do
  add_host_binding $host_bin
done

popd


