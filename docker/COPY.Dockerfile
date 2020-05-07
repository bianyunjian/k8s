
#FROM 该指令用于设置后基础镜像。有效的Dockerfile必须使用FROM作为其第一条指令

FROM ubuntu:18.04


#LABEL 可以为镜像添加标签， 用来组织分类
# 支持多个标签

LABEL vendor="HankuTech"
LABEL author="yunjian.bian"

#RUN 用来执行当前镜像支持的任何命令
#RUN 是在 docker build时运行

RUN /bin/bash -c 'echo hello'
RUN /bin/bash -c 'echo $HOME'
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bk

 

#COPY 用于将来自源的新文件或目录复制到目的地的容器的文件系统
# 注意这里是从上下文目录中复制文件， 上下文目录是通过 docker build 指定的
# docker build -f xx.Dockerfile  .  这最后一个. 代表将当前目录作为上下文目录， 可以指定其他目录
 
# 这里第一个 apt/* 是参照的上下文目录
# 第二个 /etc/apt 是容器内部的目录
COPY ./apt/* /etc/apt  
  
RUN apt-get update
RUN apt-get install -y curl wget


CMD ["curl" ,"https://www.baidu.com"]
CMD ["wget" ,"https://www.baidu.com"]

