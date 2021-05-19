#!/bin/bash
#Assuming file name of log is logFile and running this script at the same place where logFile is present

echo "Time,Number of Messages"; cat logFile|cut -d' ' -f-3|cut -d':' -f-2|uniq -c|awk '{print $2,$3,$4","$1}'

