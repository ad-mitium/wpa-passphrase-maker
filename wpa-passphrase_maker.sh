#!/bin/bash

echo "Executing..."

#####  Basic parameters  #####
wpa_file=wpa_supplicant.conf
echo -n "Enter SSID: "
read wpa_ssid
echo -n "Enter passphrase: "
read wpa_phrase

stars=**********

/usr/bin/wpa_passphrase $wpa_ssid $wpa_phrase | tee $wpa_file

sed -i -e "s/\#psk=.*/\#psk=\"$stars\"/" $wpa_file

wpa_phrase=$stars

echo "Output written to "$wpa_file":"
cat $wpa_file
echo "Copy this file to /etc directory after adding neccesary info"
# echo "Contents of wpa_phrase: $wpa_phrase"