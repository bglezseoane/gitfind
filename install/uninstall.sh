#!/bin/bash

#####################################################################
# @Project: gitfind                                                 #
# Purpose: gitfind is a utility that finds the git repositories     #
#           included in the directory you want. You can only list   #
#           or apply another specific utility to them. It also      #
#           provides the option to filter the search to capture a   #
#           specific repository.                                    #
#                                                                   #
# @Program: uninstall.sh                                            #
# @Author: Borja González Seoane (GlezSeoane)                       #
# @Email: dev@glezseoane.com                                        #
# @Date: 29/12/2018                                                 #
# Program purpose: This script uninstall gitfind files for your     #
#           machine.                                                #
# Output: 0 on success and 1 on error.                              #
#                                                                   #
# Version: 0.1-alpha                                                #
#                                                                   #
#                 Read manpage for more information                 #
#####################################################################


# Output stye
RESTORE="\033[0m"
GREEN="\033[01;32m"
RED="\033[01;31m"


# Discrimine machine type
function itsMac {
	{
		uname -a | grep Mac
	} &> /dev/null
}

function itsLinux {
	{
		uname -a | grep Linux
	} &> /dev/null	
}


cd ..
itsMac && rm /usr/local/bin/gitfind && echo -en "${GREEN}OK: removed binaries${RESTORE}\n" && rm /usr/local/share/man/man1/gitfind.1 && echo -en "${GREEN}OK: removed manpages${RESTORE}\n" && exit 0
itsLinux && rm /usr/local/bin/gitfind && echo -en "${GREEN}OK: removed binaries${RESTORE}\n" && rm /usr/share/man/man1/gitfind.1.gz && echo -en "${GREEN}OK: removed manpages${RESTORE}\n" && exit 0
echo -en "${RED}Imposible to autouninstall gitfind. Remove the files manually by yourself.${RESTORE}\n" && exit 1

