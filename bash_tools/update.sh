#!/bin/bash
#===============================================================================
#
#          FILE:  update.sh
# 
#         USAGE:  ./update.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Lukasz Smoron (), lukasz.smoron@chi.navteq.com
#       COMPANY:  NAVTEQ
#       VERSION:  1.0
#       CREATED:  11/15/2011 09:56:08 AM CST
#      REVISION:  ---
#===============================================================================

sudo apt-get update
sudo apt-get upgrade
/home/lsmoron/bin/chromium_daily.py