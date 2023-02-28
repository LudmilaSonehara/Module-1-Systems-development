/* SCRIPT 1
 select* from consulta WHERE 
 year (data_)= year( curdate())-2
  ORDER BY convenio_id    IS     NOT  NULL;
*/

/* SCRIPT 2
select *from internacao where year (data_prev_alta) >  year (data_alta)
*/

/* SCRIPT 3
select data_,valor_consulta,convenio_id,medico_id,especialidade,nome_PACIENTE,data_nascimento
from consulta c join paciente p on  paciente = p.id
where p.id < 02;
*/

/* SCRIPT 4
SELECT  DATA_,CONVENIO_iD,PACIENTE,MEDICO_ID,ESPECIALIDADE,RECEITA_ID,
MIN(VALOR_CONSULTA),MAX(VALOR_CONSULTA),
COUNT(*)
FROM CONSULTA
*/

/* SCRIPT 5
select data_entrada,data_prev_alta,data_alta,procedimento,nome_PACIENTE,tipo_quarto_id,

data_nascimento,numero,tipo descricao ,valor_diaRIA ,(valor_diaRIA * DATEDIFF(data_alta, data_entrada))

from internacao i join paciente p on  paciente_id = p.id
join quarto q on tipo_quarto = q.id
 
join tipo_quarto t on tipo_quarto = t.id
*/

/* SCRIPT 6
select procedimento,data_entrada,descricao,numero,tipo_quarto ,valor_diaria
from internacao i join tipo_quarto t on tipo_quarto = t.id
join quarto q on tipo_quarto = q.id


group  by descricao=' QUARTO APARTAMENTO INDIVIDUAL '
*/

/* SCRIPT 7
SELECT c. DATA_,ESPECIALIDADE_MEDICA,DATA_NASCIMENTO,NOME_PACIENTE,
TIMESTAMPDIFF(YEAR, data_nascimento,CURDATE()) <18

FROM CONSULTA C JOIN especialidade e ON especialidade = e.ID
 JOIN PACIENTE P ON PACIENTE = P.ID

 Where E.ESPECIALIDADE_MEDICA<>'pediatria'
*/

/* SCRIPT 8
SELECT NOME_PACIENTE, I.DATA_ENTRADA,I.PROCEDIMENTO,NOME_MEDICO,ESPECIALIDADE
FROM INTERNACAO JOIN PACIENTE P ON PACIENTE_ID = P.ID
JOIN INTERNACAO I JOIN MEDICO M ON  I.MEDICO_ID  = M.ID

WHERE ESPECIALIDADE LIKE '%gastroenterologia%'
*/

/* SCRIPT 9
SELECT NOME_MEDICO, CRM ,NOME_MEDICO, COUNT(*)
FROM CONSULTA JOIN MEDICO M ON MEDICO_id =M.ID
GROUP BY NOME_MEDICO
*/

/* SCRIPT 10
  SELECT NOME,CRECI,ENFERMEIRO_ID,INTERNACAO_ID,COUNT(NOME)
FROM INTER_ENFERMEIROS JOIN ENFERMEIRO E ON ENFERMEIRO_ID =E.ID
JOIN INTERNACAO I ON ENFERMEIRO_ID =E.ID

   GROUP BY NOME having COUNT(*) > 1;
*/
