set -e

if [ -e etc/minttyrc ]; then
  exit
fi

#install bin/x86_64-w64-mingw32-gcc.exe bin/cc.exe
#install bin/x86_64-w64-mingw32-g++.exe bin/c++.exe

install etc/site/skel/.bashrc /etc/skel/.bashrc
install etc/site/skel/.bash_profile /etc/skel/.bash_profile
install etc/site/skel/.gitconfig /etc/skel/.gitconfig

install etc/site/minttyrc /etc/minttyrc
install etc/site/cc /usr/bin/cc
install etc/site/c++ /usr/bin/c++
install etc/site/npp /usr/bin/npp
install etc/site/apt-cyg /usr/bin/apt-cyg

install etc/site/Cygwin.bat Cygwin.bat

mkdir -p /opt/npp
cd /opt/npp
7z x /etc/site/npp.7.8.9.bin.zip
chmod -R u=rwx,go= .
