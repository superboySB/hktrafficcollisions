# 使用Rocker的Shiny基础镜像
FROM rocker/shiny-verse:4.2.0

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    libudunits2-dev \
    libgdal-dev \
    libgeos-dev \
    libproj-dev

# 安装R包依赖
RUN R -e "install.packages(c('shinydashboard', 'shinyWidgets', 'leaflet', 'sf', 'tmap', 'DT', 'shiny.i18n', 'hkdatasets'))"

# 复制应用文件
COPY inst/app /srv/shiny-server/app

# 暴露端口
EXPOSE 3838

# 设置日志输出
ENV SHINY_LOG_STDERR=1

# 运行应用
CMD ["/usr/bin/shiny-server"]