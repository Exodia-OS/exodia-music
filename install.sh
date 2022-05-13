#!/bin/bash 

#
# Copyright (C) 29-April 2022 Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>
# Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
#

                    #  ------   Step 1   ------  #


# ------ copying Music | .ncmpcpp | .mpd Directories to Home Directory ------ #

workDir=$(pwd)

# Check if the directory exists #
if [ ! -d "~/Music" ];
then
    # Create a new one if it doesn't exist #
    mkdir -p ~/Music;
fi

# copying files to Music folder in Home Directory #
mv -i "$workDir"/Music/* ~/Music

# move ncmpcpp configuration files to home directory #
mv -i "$workDir"/.ncmpcpp/ ~/

# move mpd configuration files to home directory #
mv -i "$workDir"/.mpd/ ~/

# ------ copying Music | .ncmpcpp | .mpd Directories to Home Directory ------ #


                    #  ------   Final Step   ------  #

# ------ remove unneeded files ------ #
cd "$workDir" && cd ..
rm -rf exodia-music
# ------ remove unneeded files ------ #