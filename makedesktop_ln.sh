#!/bin/bash 
set -x

display_usage() { 
	echo -e "\nUsage:\n${0} path_to_source_file \n" 
	} 

# if less than two arguments supplied, display usage 
	if [  $# -le 0 ] 
	then 
		display_usage
		exit 1
	fi 

fullfile=${1}
echo ${fullfile}

filename="${fullfile##*/}"
echo ${filename}

ln -s ${fullfile} ~/Desktop/${filename}

