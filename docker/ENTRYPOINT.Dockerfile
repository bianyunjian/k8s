
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
  

#ENTRYPOINT  类似CMD指令， 但不会被docker run 的命令行参数指定的指令覆盖， 而是将这些命令行参数作为运行参数送给ENTRYPOINT指定的程序
#如果运行docker run时使用了 --entrypoint选项，此选项的参数会覆盖ENTRYPOINT指令
#只支持一个ENTRYPOINT, 如果存在多个指令，只有最后一个生效
#格式：  ENTRYPOINT [ "executable", "param1","param2",...]

#可以搭配CMD指令使用
#内置的默认的固定参数使用 ENTRYPOINT定义
#可变化参数使用CMD定义 


ENTRYPOINT ["cat", "/etc/hostname" ] #固定程序与固定参数
CMD ["/etc/resolv.conf"]   #变化参数



# 运行时 ，采用默认参数
# docker run demo-entrypoint:v1 #输出hostname ， reslov.conf的内容

# 运行时 ，指定参数为 /etc/hosts
# docker run demo-entrypoint:v1 /etc/hosts #输出hostname ， hosts的内容



