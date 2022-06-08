#!/bin/bash 

if [ -z $1 ];then
  echo "参数param1 参数为空"
  exit 1
fi

packversion=centos7/supervisor:$1
docker build -t $packversion -f Dockerfile .

if [ $? != 0 ];then
  echo "faile docker build"
  else
  echo "docker build success"
fi