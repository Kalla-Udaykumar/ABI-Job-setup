#!/bin/bash
cd ${WORKSPACE}/zephyr 
source zephyr-env.sh
west build -p auto -b intel_adl_crb ${WORKSPACE}/zephyr/samples/kw_scan/
