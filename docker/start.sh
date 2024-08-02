#!/bin/sh
# 启动Docker守护进程
dockerd &

# 等待Docker守护进程完全启动
while ! docker info >/dev/null 2>&1; do
    echo "Waiting for Docker to start..."
    sleep 1
done

# 部署Dify
docker-compose up
