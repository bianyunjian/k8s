

apt install -y libgomp1
apt-get install -y libgtk2.0-0 
apt install -y libdc1394-22-dev
apt install -y multiarch-support



#wget http://ftp.ca.debian.org/debian/pool/main/g/gstreamer0.10/libgstreamer0.10-0_0.10.36-1.5_amd64.deb
#wget http://ftp.ca.debian.org/debian/pool/main/g/gst-plugins-base0.10/libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb
dpkg -i libgstreamer0.10-0_0.10.36-1.5_amd64.deb
dpkg -i libgstreamer-plugins-base0.10-0_0.10.36-2_amd64.deb

apt --fix-broken install -y

#wget http://ftp.us.debian.org/debian/pool/main/i/ilmbase/libilmbase6_1.0.1-6.1_amd64.deb
dpkg -i libilmbase6_1.0.1-6.1_amd64.deb
dpkg -i libopenexr6_1.6.1-8_amd64.deb
dpkg -i libopenexr-dev_1.6.1-8_amd64.deb

apt --fix-broken install -y

cp *.so /usr/local/lib/
cp *.so.* /usr/local/lib/
cp opencv3.4.3/* /usr/local/lib/

ldconfig -v

ldd libarSDK4CommonBundle.so
ldd libedgingFaceEngine.so
ldd libtengine.so







