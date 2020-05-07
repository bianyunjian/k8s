
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
 
#ENV 设置环境变量， 在后续指令中可以使用, 在容器运行时也可以使用
#格式： ENV <key> <value>
#格式： ENV <key>=<value> <key2>=<value2> ...
#后续指令使用 $ENVNAME 引用


ENV HOST_NODE_NAME=byj-pc

RUN echo $HOST_NODE_NAME
RUN echo "this docker container runs on $HOST_NODE_NAME"
RUN env

#ARG 构建参数， 与ENV类似，但是作用域不一样， 只有在docker build过程中有效， 构建好的镜像中不存在此环境变量
#构建命令 docker build 中可以用 --build-arg <参数名>=<值> 来覆盖
#格式：  ARG <参数名>[=<默认值>]

ARG PLATFORM=dev
ENV ENV_PLATFORM=$PLATFORM

RUN echo $PLATFORM

RUN mkdir /app

COPY ./env/$ENV_PLATFORM.sh /app/run.sh

ENTRYPOINT ["sh","/app/run.sh"]
 

#可以使用参数化构建
# docker build -f  ENV.Dockerfile . --build-arg PLATFORM=prod --no-cache

