#!/bin/sh

# Prepare needed commands
MV=`which mv`
RENAME=`which rename`
SED=`which sed`
FIND=`which find`

# Save current directory
#CURRENTDIR=`pwd`

# Get new profile name
NEWNAME=$1
if [ -z $NEWNAME ]; then
  echo "Error: missing argument"
  echo "Usage: " $0 "[new_name]"
  exit 1;
fi

# Enter the profile dir
cd repository

# Rename all profile files
$RENAME s/kstarter\./$NEWNAME./ *

# Rename functions in profile files
$SED s/kstarter/$NEWNAME/g -i *.install
$SED s/kstarter/$NEWNAME/g -i *.profile

