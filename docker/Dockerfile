FROM docker:2.29

# 安装必要的工具
RUN apk add --no-cache docker-compose

# 复制你的docker-compose文件和其他必要文件
COPY docker-compose.yaml /app/
COPY start.sh /app/

WORKDIR /app

# 设置启动脚本
CMD ["sh", "start.sh"]
