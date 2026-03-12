# Dockerfile
FROM node:18-alpine

WORKDIR /app

# 复制依赖文件并安装
COPY package*.json ./
RUN npm install --registry=https://registry.npmmirror.com

# 复制项目代码
COPY . .

# 构建项目
RUN npm run build

# 暴露端口
EXPOSE 3000

# 启动命令（preview 已构建产物）
CMD ["npm", "start"]