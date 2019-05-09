
# Install dependencies (if needed)
$yum install -y libpng
$yum install -y libjpeg
$yum install -y openssl
$yum install -y icu
$yum install -y libX11
$yum install -y libXext
$yum install -y libXrender
$yum install -y xorg-x11-fonts-Type1
$yum install -y xorg-x11-fonts-75dpi
$ yum install xz

# Get latest version of wkhtmltopdf (replace version number if needed)
$ wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

# Untar and move wkhtmltox
$ unxz wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
$ tar -xvf wkhtmltox-0.12.4_linux-generic-amd64.tar
$mv wkhtmltox/bin/* /usr/local/bin/


# Add wkhtmltopdf to .bash_profile (optional)
#nano .bash_profile
# Add the following line at the end of the .bash_profile file
# export PATH=/usr/bin/wkhtmltox/bin:$PATH

# And don't forget..
$rm -rf wkhtmltox
$rm -f wkhtmltox-0.12.4_linux-generic-amd64.tar

# Finally enjoy!
$ wkhtmltopdf http://www.google.com google.pdf


#Using RPM file
#Download the wkhtmltopdf RPM file
#wget http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-centos7-amd64.rpm
#rpm -Uvh wkhtmltox-0.12.2.1_linux-centos7-amd64.rpm
