#!/bin/sh

sleep 5;


#if target directory contains a .rar file, file is extracted to (argument 3) 
# (argument 1) = watched directory
# (argument 2) = target directory (relative)
# (argument 1+2) = absolute directory 
# (argument 3) = extraction target

# This script is meant to be used with directory monitoring such as incron.
# /.../WATCHED/DIRECTORY  IN_CREATE,IN_MOVED_TO,recursive=false         /PATH/TO/SCRIPT/autounrar.sh /.../WATCHED/DIRECTORY $# /EXTRACTION-TARGET



if [ -e /$1/$2/*.rar ]; then

        unrar -o- x "$1/$2/*.rar" $3; 

exit; 0
fi



