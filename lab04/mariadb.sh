
# Update packages and install mariadb
yum update -y
yum install -y mariadb-server mariadb

# Enable on boot and start mariadb service
systemctl enable mariadb 
systemctl start mariadb

# Configuring MariaDB Security
mysql -u root < /vagrant/config.sql

# Configuring Drupal Database
mysql -u root -ppassword < /vagrant/drupal.sql


