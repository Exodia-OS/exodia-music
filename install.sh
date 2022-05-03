#!/bin/bash 

#
# Copyright (C) 29-April 2022 Mahmoud Mohamed (Ozil)  <https://github.com/mmsaeed509>
# Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
#

                    #  ------   Step 1   ------  #


# ------ copying Music Directory to Home Directory in the Music folder ------ #

homeDir = "~/Music"

# Check if the directory exists #
if [ ! -d "$homeDir" ];
then
    # Create a new one if it doesn't exist #
    mkdir -p "$homeDir";
fi

# copying files to Music folder in Home Directory #
cp -rf /Music/* ~/"$homeDir"

# ------ copying Music Directory to Home Directory in the Music folder ------ #


                    #  ------   Final Step   ------  #

# ------ remove unneeded files ------ #
cd .. && rm -rf exodia-music
# ------ remove unneeded files ------ #