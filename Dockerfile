# 使用官方 nginx 映像為 base
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
