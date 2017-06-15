#!/bin/bash
echo ========== Get Parameters =========
SRS_CONFIG_FILE=$1
 
echo ========== Synchornize System ==========
#ntpdate us.pool.ntp.org
echo SERVICE_NAME is $SERVICE_NAME
echo SERVICE_VERSION is $SERVICE_VERSION
echo PROFILE is $PROFILE
echo CONFIG_KEY is $CONFIG_KEY

echo ========== Set Up Environment ========== 
export SRS_HOME /install/srs

if [ ! $SRS_CONFIG_FILE ]; then
  SRS_CONFIG_FILE=/conf/srs.conf
  echo "Configuration file path not setting, Use Default  : " $SRS_CONFIG_FILE
else
  echo "Configuration file path is : " $SRS_CONFIG_FILE
fi 


echo ========== Edit Configuration ========== 

echo ========== Initialize Database ==========


echo ========== Database Configuration ========== 

echo ========== Start Application ==========
cd /install
bash ./objs/srs -c $SRS_CONFIG_FILE -t
cat "Start SRS and trace log..." >> /logs/srs.log
tailf /logs/srs.log