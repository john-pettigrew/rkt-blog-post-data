#! /bin/sh

while :
do
  time=`date "+%x %X"`
  echo $time
  echo $time >> /app/log/logs
  sleep 5
done
