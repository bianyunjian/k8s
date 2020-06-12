echo '-------------------update hosts-------------------'

echo "172.16.114.72  harbor.k3s.com" >> /etc/hosts
echo "172.16.114.72  portal.k3s.com" >> /etc/hosts


echo '-------------------/etc/hosts-------------------'
cat /etc/hosts

echo '-------------------/etc/resolv.conf-------------------'
cat /etc/resolv.conf

