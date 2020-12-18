#!/bin/sh
 
if [[ ! -d "./data/master" ]]; then
 echo "主节点文件夹master不存在，正在创建..."
 mkdir -p ./data/master/
fi

if [[ ! -d "./data/secondary1" ]]; then
 echo "副本集1文件夹secondary1不存在，正在创建..."
 mkdir -p ./data/secondary1/ 
fi

if [[ ! -d "./data/secondary2" ]]; then
 echo "副本集2文件夹secondary2不存在，正在创建..."
 mkdir -p ./data/secondary2/ 
fi

if [[ ! -d "./data/secondary3" ]]; then
 echo "副本集3文件夹secondary3不存在，正在创建..."
 mkdir -p ./data/secondary3/ 
fi
 
if [[ ! -d "./data/arbiter" ]]; then
 echo "裁决文件夹arbiter不存在，正在创建..."
 mkdir -p ./data/secondary1/ 
fi

echo "mongo start..."

sleep 5

docker-compose up