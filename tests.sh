#!/bin/bash


#####################################################################
# Script: tests.sh                                                  #
# Author: Bárður Christiansen                                       #
# Created: 27/03-22                                                 #
# Modified: 27/03-22                                                #
# Purpose: Script containing various Bash tests                     #
#####################################################################


# Check if arguments have been entered
# Checks if at least 2 arguments have been passed to the script
if [ -z $2 ]
then
    echo "**ERROR**: Missing argument"
    exit 1
fi


# Check if [FILE] exists
if [ ! -e [FILE] ]
then
    echo "**ERROR**: [FILE] does not exist"
    exit 1
fi


# Check if [FILE] is readable
if [ ! -r [FILE] ]
then
    echo "**ERROR**: [FILE] is not readable"
    exit 1
fi


# Check if [FILE] is writable
if [ -w [FILE] ]
then
    echo "**ERROR**: [FILE] is writable"
    exit 1
fi


# Check if [FILE] already exists
if [ -e [FILE] ]
then
    echo "**ERROR**: A file called [FILE] already exists."
    exit 1
fi


# Check if dependency is installed
if [[ ! $( dpkg -s [PACKAGE NAME] ) ]]
then
    echo "**ERROR**: [PACKAGE NAME] is not installed"
    echo "Install [PACKAGE NAME] using:"
    echo "    apt install [PACKAGE NAME]"
    exit 1
fi


# Check if [FILE] exists and contains any data
if [ ! -s [FILE] ]
then
    echo "**ERROR**: [FILE] does not exist or does not contain any data."
    exit 1
fi


# Check if [FOLDER] exists and is a directory
if [ ! -d [FOLDER] ]
then
    echo "**ERROR**: [FOLDER] does not exist or or is not a directory."
    exit 1
fi
