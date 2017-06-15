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
export SRS_HOME=/install/srs
export SRS_LOG_FILE=/logs/srs.log

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
cd $SRS_HOME
bash ./objs/srs -c $SRS_CONFIG_FILE -t
#touch $SRS_LOG_FILE
#cat "Start SRS and trace log..." >> $SRS_LOG_FILE
#tail -f $SRS_LOG_FILE