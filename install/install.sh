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
# Program purpose: This script install gitfind files for your       #
#           machine.                                                #
# Output: 0 on success and 1 on error.                              #
#                                                                   #
# Version: 1.2                                                      #
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
itsMac && cp ./gitfind /usr/local/bin/ && echo -en "${GREEN}OK: installed binaries${RESTORE}\n" && cp ./docs/manpage.mac /usr/local/share/man/man1/gitfind.1 && echo -en "${GREEN}OK: installed manpages${RESTORE}\n" && exit 0
itsLinux && cp ./gitfind /usr/local/bin/ && echo -en "${GREEN}OK: installed binaries${RESTORE}\n" && cp ./docs/manpage.linux /usr/share/man/man1/gitfind.1.gz && echo -en "${GREEN}OK: installed manpages${RESTORE}\n" && exit 0
echo "${RED}Imposible to autoinstall gitfind. Copy the files manually by yourself.${RESTORE}\n" && exit 1

