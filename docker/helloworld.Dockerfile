
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
 

CMD ["echo" ,"hello from docker"]
 

