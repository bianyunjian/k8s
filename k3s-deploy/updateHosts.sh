echo '-------------------update hosts-------------------'

echo "172.16.114.72  core.harbor.k3s.com" >> /etc/hosts
echo "172.16.114.72  notary.harbor.k3s.com" >> /etc/hosts


echo '-------------------/etc/hosts-------------------'
cat /etc/hosts

echo '-------------------/etc/resolv.conf-------------------'
cat /etc/resolv.conf
