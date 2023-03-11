#!/bin/bash

APIKEY="0123456789ABCDEFGHIJKLM"
DOMAIN=$CERTBOT_DOMAIN
PRAEFIX="_acme-challenge"
TYPE="TXT"
CONTENT=$CERTBOT_VALIDATION

curl -s -X DELETE "https://ipv64.net/api.php" -H "Authorization: Bearer $APIKEY" -d "del_record=$DOMAIN&praefix=$PRAEFIX&type=$TYPE&content=$CONTENT"
sleep 15
