#!/bin/bash

cd ${WORKSPACE}/abi/IA_ClockLib/
make install
cd /src/test
make

cd ../../..
cd ${WORKSPACE}/abi/linuxptp-ia_clocklib/
make