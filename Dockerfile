# 使用官方最新的轻量级 Nginx 基础镜像
FROM nginx:alpine

# 移除默认的配置文件
RUN rm /etc/nginx/conf.d/default.conf

# 复制自定义的主配置文件到 Nginx 的配置目录
# 这里将本地 /config/nginx.conf 复制到容器的 /etc/nginx/nginx.conf
COPY ./config/nginx.conf /etc/nginx/nginx.conf

# 可选：如果您要部署静态内容，将静态文件复制到默认的 Web 根目录
# COPY ./html /usr/share/nginx/html

# 容器启动时默认运行 Nginx，无需额外 ENTRYPOINT/CMD