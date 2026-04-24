FROM v2fly/v2fly-core:latest

# 拷贝你的配置文件到官方默认路径
COPY config.json /etc/v2ray/config.json

# 暴露端口
EXPOSE 8080

# 运行命令
CMD ["v2ray", "run", "-config", "/etc/v2ray/config.json"]
