

#原文件备份
mv /etc/apt/sources.list  /etc/apt/source.list.bak
 

echo "">/etc/apt/sources.list

#修改源
echo "deb http://mirrors.aliyun.com/debian stable main contrib non-free">>/etc/apt/sources.list
echo "deb http://mirrors.aliyun.com/debian stable-proposed-updates main contrib non-free">>/etc/apt/sources.list
echo "deb http://mirrors.aliyun.com/debian stable-updates main contrib non-free">>/etc/apt/sources.list
echo "deb-src http://mirrors.aliyun.com/debian stable main contrib non-free">>/etc/apt/sources.list
echo "deb-src http://mirrors.aliyun.com/debian stable-proposed-updates main contrib non-free">>/etc/apt/sources.list
echo "deb-src http://mirrors.aliyun.com/debian stable-updates main contrib non-free">>/etc/apt/sources.list 


echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster main contrib non-free">>/etc/apt/sources.list 
echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-updates main contrib non-free">>/etc/apt/sources.list 
echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-backports main contrib non-free">>/etc/apt/sources.list 
echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian-security buster/updates main contrib non-free">>/etc/apt/sources.list 


#更新
apt update

apt-get install -y vim
apt-get install -y binutils
apt-get install -y wget
apt-get install -y curl
