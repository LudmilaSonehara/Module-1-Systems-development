CREATE USER 'domingass'@'localhost' IDENTIFIED BY 'dom123';
GRANT SELECT ON *.* TO 'domingass'@'localhost';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'domingass'@'localhost';
