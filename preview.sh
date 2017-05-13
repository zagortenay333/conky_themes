#!/bin/bash

if [ ! -d ~/.harmattan-assets/ ]
then
  echo 'Installing assets'
  cp -r .harmattan-assets ~/
fi

if [ ! -f ~/.conkyrc ]
then
  echo 'No config file found, using first theme to start with.'
  cp .harmattan-themes/Brown-Card/God-Mode/normal-mode/.conkyrc ~/
fi

PID=$(ps -ef | grep [c]onky | awk {'print $2'})
if [ -z $PID ]
then
  echo 'Conky not running, starting it'
  conky
fi

for theme in $(find .harmattan-themes/ -wholename '*/God-Mode/normal-mode/.conkyrc' | sort)
do
  echo ""
  echo "Now previewing $theme"
  cp $theme ~/
  sleep 5
done
