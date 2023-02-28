CREATE ROLE 'consultas';
GRANT SELECT ON uc4atividades.* TO 'consultas';
GRANT 'consultas' TO 'domingass'@'localhost';
