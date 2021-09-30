#!/bin/bash

# Notifica por email si el servidor esta caído

for i in $@
do
ping -c 1 $i &> /dev/null
if [ $? -ne 0 ]; then
 echo "`date`: error de ping, $i host caido!" | mail -s "$i host caido!" mi@email
  
fi
done