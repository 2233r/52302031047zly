# 使用官方Node.js镜像作为基础
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制package文件并安装依赖
COPY package*.json ./
RUN npm install --only=production

# 复制应用源代码
COPY . .

# 声明容器运行时监听的端口
EXPOSE 3000

# 启动命令（根据你的实际应用修改）
CMD ["node", "server.js"]

