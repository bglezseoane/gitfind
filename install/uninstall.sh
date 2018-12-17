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

#*************************** uninstaller ****************************
# Simple script to uninstall gitfind in *nix machine

# Output stye
RESTORE="\033[0m"
GREEN="\033[01;32m"
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
itsMac && rm /usr/local/bin/gitfind && echo -en "${GREEN}OK: removed binaries${RESTORE}\n" && rm /usr/local/share/man/man1/gitfind.1 && echo -en "${GREEN}OK: removed manpages${RESTORE}\n" && exit 0
itsLinux && rm /usr/local/bin/gitfind && echo -en "${GREEN}OK: removed binaries${RESTORE}\n" && rm /usr/share/man/man1/gitfind.1.gz && echo -en "${GREEN}OK: removed manpages${RESTORE}\n" && exit 0
echo -en "${RED}Imposible to autouninstall gitfind. Remove the files manually by yourself.${RESTORE}\n" && exit 1

