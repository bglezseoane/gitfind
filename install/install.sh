#!/bin/bash

<<DOC
#####################################################################
# @Project: gitfind                                                 #
# @Author: Borja González Seoane (GlezSeoane)                       #
# @Email: dev@glezseoane.com                                        #
# @Date: 19/12/2018                                                 #
# Purpose: gitfind is a utility that finds the git repositories     #
#               included in the directory that you want. It can     #
#               list or apply another specific utility to them. It  #
#               also provides the option to filter the search to    #
#               capture a specific repository. See the manual page  #
#               for more information. It also provides the option   #
#               to filter the search to capture a specific          #
#               repository.                                         #
#                                                                   #
# Version: 1.0                                                      #
#                                                                   #
#                 View manpage for more information                 #
#####################################################################
DOC

#**************************** installer *****************************
# Simple script to install gitfind in *nix machine

# Output stye
RESTORE="\033[0m"
GREEN="\033[01;32\nm"
RED="\033[01;31m"


# Discrimine machine type
function itsMac {
	{
		uname -a | grep Mac && return 0
	} &> /dev/null
}

function itsLinux {
	{
		uname -a | grep Mac && return 0 
	} &> /dev/null
}


cd ..
itsMac && cp ./gitfind /usr/local/bin/ && echo -en "${GREEN}OK: installed binaries${RESTORE}\n" && cp ./docs/manpage.mac /usr/local/share/man/man1/gitfind.1 && echo -en "${GREEN}OK: installed manpages${RESTORE}\n" && exit 0
itsLinux && cp ./gitfind /usr/local/bin/ && echo -en "${GREEN}OK: installed binaries${RESTORE}\n" && cp ./docs/manpage.linux /usr/share/man/man1/gitfind.1.gz && echo -en "${GREEN}OK: installed manpages${RESTORE}\n" && exit 0
echo "${RED}Imposible to autoinstall gitfind. Copy the files manually by yourself.${RESTORE}\n" && exit 1

