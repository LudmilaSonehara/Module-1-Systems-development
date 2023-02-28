use hospital;

create table paciente(
nome VARCHAR (200),
cpf int,
data_de_nascimento date,
endereco varchar (200),
telefone varchar (45),
email varchar (200),
convenio varchar (45)
);

create table medicos (
especialistas varchar (45) not null, 
generalistas varchar (45) not null, 
residentes varchar (45) not null, 
nome varchar (200) not null, 
endereco varchar (200) not null, 
email varchar (200) not null unique, 
cpf int not null unique, 
CRM varchar (45) not null unique
);

create table consultas (
data_e_hora datetime not null unique, 
medico_responsavel varchar (45) not null unique, 
paciente varchar (45) not null unique, 
valor_da_consulta decimal not null, 
convenio varchar (45) not null, 
especialidade varchar (45) not null
);

create table convenio (
nome varchar (200) not null, 
cnpj varchar (45) not null,
carencia varchar (45) not null
);

create table receitas (
registro_medicamento varchar (200) not null, 
quantidade varchar (45) not null, 
modo_de_uso varchar (200) not null
);

create table quartos (
numero int not null unique,
tipo varchar (45) not null
);

create table tipo_quarto (
descricao blob, 
valor_diaria decimal
);

create table enfermeiro (
nome varchar (200) not null, 
cpf int not null unique, 
cre varchar (45) not null unique
);

 create table internacao (
 data_entrada date not null, 
 data_prev_alta date not null, 
 data_alta date not null, 
 procedimento blob not null 
 );
 

