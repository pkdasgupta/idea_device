#!/usr/bin/env bash

# ---------------------------------------------------------------------------------------------------------------------
# • Problem Statement :
# Given a file of the form (you can use /etc/passwd):
# root:x:0:0:root:/root:/bin/bash
# daemon:x:1:1:daemon:/usr/sbin:/bin/sh
# bin:x:2:2:bin:/bin:/bin/sh
# sys:x:3:3:sys:/dev:/bin/sh
# sync:x:4:65534:sync:/bin:/bin/sync
# games:x:5:60:games:/usr/games:/bin/sh
# man:x:6:12:man:/var/cache/man:/bin/sh
# lp:x:7:7:lp:/var/spool/lpd:/bin/sh
# mail:x:8:8:mail:/var/mail:/bin/sh
# news:x:9:9:news:/var/spool/news:/bin/sh
# 
# Write a bash 4.0 shell script that does not use any external commands that will sum the third field, delimited by ':'.
# Your script should take the name of the file to process as the first command line argument.
# The prohibition on external commands means that you do not have access to commands like sed, grep, awk and so on.
#
# • Usage : ./idea.sh <file_name>
#   Eg. : ./idea.sh /etc/passwd
#
# • Author : Prashant Dasgupta
# • Mail To : prashant.dasgupta@yahoo.com
# ---------------------------------------------------------------------------------------------------------------------


# Displaying File Name :
echo -e "\n\n File : $1"

# Displaying Sample Contents of File :
echo -e "\n Sample Contents : \n"
tail $1

echo -e "\n\n Computing Sum : "
sum=0

# Computing Sum :
for i in `cut -d ':' -f3 $1`
do
    echo -n "$i + "
    sum=`expr $sum + $i`
done

# Diplaying Result :
echo -e " = $sum \n"
echo -e "\n\n Sum of Values from the 3rd Field = $sum \n\n"

exit
