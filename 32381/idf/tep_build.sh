#!/bin/bash -xe
export http_proxy=http://proxy-dmz.intel.com:912
export https_proxy=http://proxy-dmz.intel.com:912
export no_proxy=intel.com,.intel.com,10.0.0.0/8,192.168.0.0/16,localhost,.local,127.0.0.0/8,134.134.0.0/16
pip3 install ruamel.yaml
pip3 install kas==2.5.0
cd ${WORKSPACE}/abi/meta-tep-build-setup
--preserve-env=https_proxy,http_proxy,no_proxy ./generate_release.sh tep-container
--preserve-env=https_proxy,http_proxy,no_proxy ./generate_release.sh tep-acrn
--preserve-env=https_proxy,http_proxy,no_proxy ./generate_release.sh tep-kvm
mkdir -p ${WORKSPACE}/abi/upload 
bzip2 -z  tep-container-release.tar.gz 
bzip2 -z  tep-acrn-release.tar.gz 
bzip2 -z  tep-kvm-release.tar.gz 
cp *.bz2 ${WORKSPACE}/abi/upload
