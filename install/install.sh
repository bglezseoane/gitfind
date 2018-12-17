#!/bin/bash

<<DOC
#####################################################################
# @Project: gitfind                                                 #
# @Author: Borja González Seoane (GlezSeoane)                       #
# @Email: dev@glezseoane.com                                        #
# @Date: 17/12/2018                                                 #
# Purpose    : gitfind is an utility that finds all the git 		#
#				repositories included in the folder you want. It 	#
#				can list them or apply another specific utility. 	#
#                                                                   #
# Version: 0.1-alpha                                                #
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

