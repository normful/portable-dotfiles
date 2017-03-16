#!/bin/bash
#
# Warning: This script currently can't handle filenames with spaces in it
#
# Path to dotfiles directory
DF_DIR=$HOME/dotfiles/

# Create non-existent directories
for DF_PATH in `find $DF_DIR -not -path "*/.git/*"`; do
    if [[ -d $DF_PATH ]]; then
        DF_SUBDIR=$HOME`echo $DF_PATH | cut -d / -f '5-'`
        if [[ ! -e $DF_SUBDIR ]]; then
            echo "Creating directory" $DF_SUBDIR
            mkdir -p $DF_SUBDIR
        fi
    fi
done

# Create symlinks
for DF_PATH in `find $DF_DIR -not -path "*/.git/*"`; do
    # Only act on files and symlinks
    if [[ -f $DF_PATH || -h $DF_PATH ]]; then
        DF_RELPATH=`echo $DF_PATH | cut -d / -f '5-'`
        if [[ ! $DF_RELPATH == "README.md" ]]; then
            SYMLINK_PATH=$HOME$DF_RELPATH
            DF_PATH_TRIMMED=$DF_DIR`echo $DF_PATH | cut -d / -f '6-'`
            # Add --force to overwrite existing file at $SYMLINK_PATH
            ln -s -f -F -v $DF_PATH_TRIMMED $SYMLINK_PATH
        fi
    fi
done

echo ""
echo ""
echo "Warning: this script does not handle paths with spaces in them yet!"
exit 0
