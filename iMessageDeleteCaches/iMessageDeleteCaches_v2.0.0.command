#!/bin/bash

#
# Version 2.0.0 - Copyright (c) 2016 by M.F.C
#
# Introduction:
#     - iMessageDeleteCaches is a simple automated bash script that removes cached iMessage files and folders
#      Simply unzip the iMessageDeleteCaches folder to your Desktop and double click to execute the script!
#
#
# Bugs:
#			- Bug reports can be filed at https://github.com/mfc88/iMessageDeleteCaches/issues
#			  Please provide clear steps to reproduce the bug, the output of the script. Thank you!
#

#================================= GLOBAL VARS ==================================

let errNum=0

#================================================================================

function endScript() {
  echo ''
  echo 'Terminating script in 3 seconds...'
  sleep 3
  killall Terminal
}

#
#--------------------------------------------------------------------------------
#

function error () {
  errNum=$1
  
  if [[ $errNum -eq 0 ]];
    then
      echo ''  
      echo 'User has aborted!'
      endScript
  fi
  
  if [[ $errNum -eq 1 ]];
    then
      echo ''   
      echo '**ERROR** Invalid choice! Script has been terminated! Please reload the script and select “y” or “Y” at prompt.'
      sleep 2
      endScript
  fi

  if [[ $errNum -eq 2 ]];
    then
      echo '' 
      echo 'It’s highly recommended that you restart your computer as soon as possible!'
      endScript
    else
      echo '' 
      echo '**ERROR** Invalid choice! Script was terminated! If deleting iMessage caches was successful, then it’s highly recommended that you restart your computer!'
      sleep 3
      endScript
  fi
}

#
#--------------------------------------------------------------------------------
#

function rebootComputer() {
  echo '' 
  read -p "Do you want to reboot now? (y/n) " choice
    case "$choice" in
    #
    # reboot user’s computer
    # 
    y|Y ) 
    sudo reboot now
    ;;
    #
    # user aborted script
    # 
    n|N ) 
    error 2
    ;;
    #
    # oops - user made a mistake, kill script
    # 
    * ) 
    error 3
    ;; 
    esac
}

#
#--------------------------------------------------------------------------------
#

function main() {
  read -p "Would you like to delete iMessage related cache files? (y/n)? " choice
    case "$choice" in
      #
      # remove files in Library/Caches
      #  
      y|Y ) 
      cd ~/Library/Caches
      rm -rf com.apple.iCloudHelper com.apple.imfoundation.IMRemoteURLConnectionAgent com.apple.Messages
      #
      # remove files from Library/Preferences
      #
      cd ~/Library/Preferences
      rm com.apple.iChat* com.apple.icloud* com.apple.ids.service* com.apple.imagent* com.apple.imessage* com.apple.imservice*
      #
      # remove messages from library/messages
      #
      find ~/Library/Messages/ -mindepth 1 -delete
      echo '' 
      echo 'All related iMessage files and folders have been successfully removed!'
      sleep 2
      rebootComputer
      ;;
      # 
      # if no, exit script
      #
      n|N ) 
      error
      ;;
      #
      # oops - user made a mistake, kill script
      # 
      * ) 
      error 1
      ;;
    esac
}

#
#--------------------------------------------------------------------------------
#

function greet(){
  echo 'iMessageDeleteCaches Version 2.0.0 - Copyright (c) 2016 by M.F.C'
  echo '----------------------------------------------------------------'
  echo ''
  sleep 1
}


#==================================== START =====================================

clear
greet
main

#================================================================================