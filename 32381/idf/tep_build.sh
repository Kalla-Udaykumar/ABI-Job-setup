#!/bin/bash -xe
pip3 install ruamel.yaml
pip3 install kas==2.5.0
cd ${WORKSPACE}/abi/meta-tep-build-setup
./generate_release.sh tep-container
./generate_release.sh tep-acrn
./generate_release.sh tep-kvm
mkdir -p ${WORKSPACE}/abi/upload 
bzip2 -z  tep-container-release.tar.gz 
bzip2 -z  tep-acrn-release.tar.gz 
bzip2 -z  tep-kvm-release.tar.gz 
cp *.bz2 ${WORKSPACE}/abi/upload
