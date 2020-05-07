
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
 
 
 
#CMD 用于指定默认的容器主进程的启动命令的
#CMD 在docker run 时运行
#如果docker run没有指定任何的执行命令或者dockerfile里面也没有entrypoint，那么，就会使用cmd指定的默认的执行命令执行
#只能有一个CMD, 如果使用了多个CMD，只会执行最后一个CMD
#举例： 我们直接运行 docker run ubuntu 时， 会直接进入 bash (此时默认的CMD就是bash) : CMD ["/bin/bash"]
#我们可以指定其他命令： docker run ubuntu cat /etc/hostname , 这就是用 cat /etc/hostname 替代了默认的 /bin/bash 命令，输出了系统版本信息 : CMD ["cat" ,"/etc/hostname"]

#CMD写法：
#CMD ["executable" ,"param1" ,"param2" ,...]

CMD ["cat" ,"/etc/hostname"]
 

