USE uc4atividades;
UPDATE usuario SET senha = md5('12345') WHERE id = 1;
UPDATE usuario SET senha = md5('67890') WHERE id = 2;
UPDATE usuario SET senha = md5('1q2w3e') WHERE id = 3;
UPDATE usuario SET senha = md5('sil123') WHERE id = 4;
UPDATE usuario SET senha = md5('ama123') WHERE id = 5;
UPDATE usuario SET senha = md5('amar123') WHERE id = 6;
UPDATE usuario SET senha = md5('dom123') WHERE id = 7;
UPDATE usuario SET senha = md5('mar123') WHERE id = 8;
UPDATE usuario SET senha = md5('joa123') WHERE id = 9;
UPDATE usuario SET senha = md5('apa123') WHERE id = 10;
UPDATE usuario SET senha = md5('fil123') WHERE id = 11;
SELECT * FROM usuario;