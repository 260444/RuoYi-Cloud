#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}

SCRIPT_DIR=$(dirname "\$0") 

echo "${SCRIPT_DIR}/mysql"
cd ${SCRIPT_DIR}/mysql
sh build.sh

echo "${SCRIPT_DIR}/nacos"
cd ${SCRIPT_DIR}/nacos
sh build.sh

echo "${SCRIPT_DIR}/nginx"
cd ${SCRIPT_DIR}/nginx
sh build.sh

echo "${SCRIPT_DIR}/redis"
cd ${SCRIPT_DIR}/redis
sh build.sh