
# 根据node14版本的运行环境来运行写image
FROM node:14-alpine

# 给container设置工作地址 work dir
WORKDIR /app

# 把本地的某个文件复制到镜像中(. .)
COPY . .

# 根据不同OS来安装不同的npm包，所以不能直接copy node_modules文件夹
RUN npm i

#用该dockerfile对整个文件进行打包
#ENTRYPOINT ["npm", "start"]
CMD ["npm", "start"]