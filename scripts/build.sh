#!/bin/sh

# Prepare needed commands
FIND=`which find`
LN=`which ln`
UNLINK=`which unlink`
BASENAME=`which basename`
LS=`which ls`
SED=`which sed`
DATE=`which date`
DRUSH=`which drush`

# Generate build dir
BUILDDIR=builds/`$DATE +"%y-%m-%d--%H-%M-%S"`

# Build core
$DRUSH make repository/drupal-org-core.make $BUILDDIR

# Build contrib
$DRUSH make repository/drupal-org.make --no-core $BUILDDIR

# Add shared symlinks
for f in `$FIND shared -mindepth 1 -maxdepth 1 ! -name 'README.txt' ! -name 'private'`
do
  $LN -s ../../../../$f $BUILDDIR/sites/default/$($BASENAME $f)
done

# Add the profile symlink
PROFILENAME=`$BASENAME $($LS repository/*.profile) | $SED -e 's/\.profile//'`
$LN -s ../../../repository $BUILDDIR/profiles/$PROFILENAME

# Change www symlink
if [ -h www ]
then
  $UNLINK www
fi
$LN -s $BUILDDIR www


# Get the name of the starter theme installed during contrib build
CURRENTDIR=`pwd`
starter_theme=""
for dir in $(ls $CURRENTDIR/www/sites/all/themes/contrib)
do
  if [ "$dir" != "adminimal_theme" ]
  then
    starter_theme=$dir
  fi
done

# Rename the chosen theme, its files and reference to its files.
$MV themes/custom/kstarter_$starter_theme themes/custom/${NEWNAME}_theme
$FIND themes/custom/${NEWNAME}_theme -name "kstarter*" -exec $RENAME s/kstarter/$NEWNAME/ {} \;
$FIND themes/custom/${NEWNAME}_theme -type f -exec $SED s/starter/$NEWNAME/g -i {} \;
