CREATE ROLE 'manipular';
GRANT INSERT, UPDATE ON uc4atividades.* TO 'manipular';
FLUSH PRIVILEGES;
GRANT 'manipular' TO 'silvioc'@'localhost';
GRANT 'manipular' TO 'amarov'@'localhost';
GRANT 'manipular' TO 'marcosv'@'localhost';
GRANT 'manipular' TO 'filomenal'@'localhost';
