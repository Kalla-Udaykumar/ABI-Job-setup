#!/bin/bash

python --version
pip --version
pip show click
cd ${WORKSPACE}/abi/IA_ClockLib/
make install
cd /src/test
make

cd ${WORKSPACE}/abi/linuxptp-ia_clocklib/
make
