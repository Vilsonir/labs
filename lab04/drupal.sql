CREATE DATABASE drupal_db;
CREATE USER db_user@'%' IDENTIFIED BY 'Drupal@123#';
GRANT ALL PRIVILEGES ON drupal_db.* TO db_user@'%';
FLUSH PRIVILEGES;
