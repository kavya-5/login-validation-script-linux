#! /bin/bash
sudo grep -F -x -v -f /var/log/auth.log.old /var/log/auth.log | sudo grep 'Failed password' >> fail.txt
tail -n 1 "fail.txt" | wc -c | xargs -I {} truncate "fail.txt" -s -{}
var1=$([ -s fail.txt ] && echo "1" || echo "0")
if [ "$var1" = "1" ]
then
  cat fail.txt | mail -s "Authentication Failure on Ubuntu" "email@domain.com"
  sudo cp -f /var/log/auth.log /var/log/auth.log.old
  sudo chown <ubuntu-user> /var/log/auth.log.old
fi
sudo rm  ~/fail.txt
exit 0
