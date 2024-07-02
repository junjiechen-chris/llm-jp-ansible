mkdir -p /opt/nhc
wget https://github.com/mej/nhc/releases/download/1.4.3/lbnl-nhc-1.4.3.tar.xz -O /opt/nhc/lbnl-nhc.tar.xz
cd /opt/nhc
tar -xvf lbnl-nhc.tar.xz
cd lbnl-nhc-1.4.3
./configure --prefix=/usr --sysconfdir=/etc --libexecdir=/usr/libexec
make test
make install
