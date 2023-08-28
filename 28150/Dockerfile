#Docker.io (minimum version of 20.10.7). For install refer documentation
#Docker proxy as mentioned in the docker documentation.
#User should have sudo permission
#Install below mentioned packages on Ubuntu20.04 or Ubuntu22.04
#sudo apt-get binutils debootstrap bison flex libelf-dev build-essential
#sudo apt-get install debian-archive-keyring && sudo apt update
# FROM Base Image
#FROM amr-registry.caas.intel.com/esc-devops/baseline/linux/ubuntu/20.04/abi:20230329-1101
FROM amr-registry.caas.intel.com/esc-devops/abi/plat/gen/lin/core-os/ubuntu2204:20230801_1245

# install dependences
RUN apt-get update && \
    apt-get install -y binutils \
        debootstrap \
        bison \
        flex \
        libelf-dev \
        build-essential \
        debian-archive-keyring
