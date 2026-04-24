FROM debian:stable-slim

# 安装 v2ray
RUN apt-get update && apt-get install -y v2ray && apt-get clean

# 拷贝配置
COPY config.json /etc/v2ray/config.json

# 暴露端口（虽然 Railway 自动处理，但显式声明更稳）
EXPOSE 8080

# 启动
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
