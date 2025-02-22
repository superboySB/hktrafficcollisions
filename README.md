## Docker部署指南

### 前置要求
- 已安装Docker (版本20.10+)
- 已安装Git

### 部署步骤

1. 运行容器
```bash
docker run --rm --network host --privileged -itd --name r-docker posit/r-base:4.3-jammy
docker exec -it r-docker /bin/bash
```

2. 克隆代码库
```bash
cd ~
git clone https://github.com/superboySB/hk-traffic-collisions.git
cd hk-traffic-collisions
```




### 访问应用
打开浏览器访问：http://localhost:3838/app/

### 开发模式运行（带热加载）
```bash
# 使用开发镜像
docker run -d -p 3838:3838 \
  -v $(pwd)/inst/app:/srv/shiny-server/app \
  --name traffic-dev \
  hk-traffic-collisions
```

### 注意事项
1. 建议使用renv管理R包依赖，可在Dockerfile中添加：
```dockerfile
RUN R -e "install.packages('renv')"
RUN R -e "renv::restore()"
```
2. 中文显示需要确保系统已安装中文字体
3. 生产环境建议配置nginx反向代理


