CREATE USER 'amarov'@'localhost' IDENTIFIED BY 'ama123';
CREATE USER 'silvioc'@'localhost' IDENTIFIED BY 'sil123';
CREATE USER 'marcosv'@'localhost' IDENTIFIED BY 'mar123';
CREATE USER 'filomenal'@'localhost' IDENTIFIED BY 'fil123';
GRANT INSERT, UPDATE ON *.* TO 'silvioc'@'localhost';
GRANT INSERT, UPDATE ON *.* TO 'amarov'@'localhost';
GRANT INSERT, UPDATE ON *.* TO 'marcosv'@'localhost';
GRANT INSERT, UPDATE ON *.* TO 'filomenal'@'localhost';
FLUSH PRIVILEGES;
SELECT * FROM mysql.user;