#!/bin/bash

source .backup.conf

#
cd $BKP_LOCN  
mkdir -p "$(date +"%d-%m-%Y")test"
cd "$(date +"%d-%m-%Y")test"
tar -zcvf "$(date +"%d-%m-%Y")".tar.gz $I_CLOUD
