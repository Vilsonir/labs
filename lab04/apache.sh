
# PHP
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

# Update packages and install PHP and httpd
yum update -y
yum install -y httpd wget gzip 
yum install -y php55w php55w-opcache php55w-mbstring php55w-gd php55w-xml php55w-pear php55w-fpm php55w-mysql

# Create a test page for PHP
bash -c 'echo "<?php  phpinfo(); ?>" > /var/www/html/test.php' 

# Enable on boot and star httpd service
systemctl enable httpd 
systemctl start httpd

# Download and Install Drupal
wget https://ftp.drupal.org/files/projects/drupal-8.0.2.tar.gz
tar -zxpvf drupal-8.0.2.tar.gz
mv drupal-8.0.2 /var/www/html/drupal
chown -R apache:apache /var/www/html/drupal/
cd /var/www/html/drupal/sites/default
cp -p default.settings.php settings.php
