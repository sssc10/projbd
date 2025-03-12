select * from fornecedor;
delete from fornecedor where id = 1;

INSERT INTO fornecedor (nome, endereco, cnpj)  
VALUES ('Banco de Dados','Rua B, 32', '98344289724571');

alter table fornecedor rename column nome to curso;
create database ACADEMIA;
  
    
    use academia;
 
    CREATE TABLE atividade (
    idatividade INT not null PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)   
    );
    CREATE TABLE instrutor (
    idinstrutor INT not null PRIMARY KEY AUTO_INCREMENT,
    rg INT,
    nome VARCHAR(45),
    nascimento date,
    endereco TEXT,
    titulacao int
    );

CREATE TABLE turma (
    idturma INT not null PRIMARY KEY AUTO_INCREMENT,
    horario time,
    duracao int,
    datainicio date,
    datafim date,
    idatividade int,
    idinstrutor int,
    foreign key (idatividade) references atividade (idatividade),
    foreign key (idinstrutor) references instrutor (idinstrutor)
    );
    
 

    CREATE TABLE aluno (
    codmatricula INT not null PRIMARY KEY AUTO_INCREMENT,
    idturma INT,
    datamatricula date,
    nome VARCHAR(45),
    endereco TEXT,
    telefone int,
    datanascimento DATE,
    altura float,
    peso int,
    foreign key (idturma) references turma (idturma)
    );
    
   CREATE TABLE matricula (
   codmatricula INT not null PRIMARY KEY AUTO_INCREMENT,
   idturma VARCHAR(100),
   foreign key (codmatricula) references aluno(codmatricula)
    ); 

CREATE TABLE telefone_instrutor (
    idtelefone INT not null PRIMARY KEY AUTO_INCREMENT,
    numero INT,
    tipo VARCHAR(45),
    idinstrutor int,
    foreign key (idinstrutor) references instrutor(idinstrutor)
     );
   
   
   use ambulatorio_db;
 alter table ambulatorio_db add nome varchar(30);
 
 create table funcionario (
  codf int not null primary key auto_increment,
  nome varchar (40),
  idade smallint,
  cpf decimal(11),
  cidade varchar (30),
  salario decimal(10,0),
  cargo varchar(20)
 );
 
 
 create table paciente (
  codp int not null primary key auto_increment,
  nome varchar (40),
  idade smallint,
  cidade varchar (30),
  cpf decimal(11),
  doenca decimal(10,0)
  );
  
create table ambulatorio (
	nroa int not null primary key auto_increment,
    andar numeric(3) not null,
    capacidade smallint	
);

create table medico (
	codm integer not null primary key auto_increment,
    nome varchar(40) not null,
    idade smallint not null,
    especialidade char(20),
    cpf numeric(11) unique,
    cidade varchar(30),
    nroa int,   
    foreign key (nroa) references ambulatorio(nroa)
);

    create table pacientes (
	codp int not null primary key auto_increment,
    nome varchar(40),
    idade smallint,
    cidade char(30),
    cpf decimal(11,0),
    doenca varchar(40)
);
 
create table consultas (
	id int not null primary key auto_increment,
    codm int,
    codp int,
    data date,
    hora time
);
   
   create database CLINICA;
   USE CLINICA;
   
   create table ambulatorio (
	nroa int not null primary key auto_increment,
    andar numeric(3) not null,
    capacidade smallint	
);
 
create table medicos (
	codm integer not null primary key auto_increment,
    nome varchar(40) not null,
    idade smallint not null,
    especialidade char(20),
    cpf numeric(11) unique,
    cidade varchar(30),
    nroa int,   
    foreign key (nroa) references ambulatorio(nroa)
);
 
create table funcionarios (
	codf int not null primary key auto_increment,
    nome varchar(40),
    idade int,
    cpf decimal(11),
    cidade varchar(30),
    salario decimal(10,0),
    cargo varchar(20)
);
 
create table pacientes (
	codp int not null primary key auto_increment,
    nome varchar(40),
    idade smallint,
    cidade char(30),
    cpf decimal(11,0),
    doenca varchar(40)
);
 
create table consultas (
	id int not null primary key auto_increment,
    codm int,
    codp int,
    data date,
    hora time
);
   
select * from medicos;
insert into medicos (nome, idade, especialidade, cpf,cidade) 
values ('Carlos', 28, 'Ortopedia', 11000110000, 'Rio de Janeiro');

insert into medicos (nome, idade, especialidade, cpf,cidade) 
values ('Beatriz', 42, 'Ginecologista', 11000110002, 'Porto Alegre');

insert into medicos (nome, idade, especialidade, cpf,cidade) 
values ('Geórgia', 36, 'Dentista', 11000110001, 'Duque de Caxias');

insert into medicos (nome, idade, especialidade, cpf,cidade) 
values ('Antônio', 28, 'Pediatra', 11000110006, 'Rio de Janeiro');

insert into medicos (nome, idade, especialidade, cpf,cidade) 
values ('Claudio', 36, 'Ortopedia', 11000110004, 'São João');


*****

update medicos set cidade = 'Belo Horizonte' 
where codm =1;

update medicos set cidade = 'Rio de Janeiro' 
where codm = 5;

update medicos set nome = 'Rubens' 
where codm = 5;

update medicos set cpf = 11000110002 
where codm = 2;

select * from medicos where especialidade = 'ortopedia';
 
select * from medicos where especialidade = 'ortopedia';
//seleciona os médicos sobre a especialidade ortopedia 


select * from medicos;
select * from medicos where especialidade = 'Ortopedia' and cidade = 'Rio de Janeiro';

use clinica;
select * from medicos;

select * from ambulatorio;



select * from medicos where idade > 35;
select * from medicos where idade > 35 and nroa = 2;


alter table medicos drop foreign key medicos_ibfk_1;
    
create database clinica_db;
use clinica_db;
 
create table ambulatorio(
	nroa int not null primary key auto_increment,
    andar decimal(3),
    capacidade smallint
);
 
create table medicos (
	codm int not null primary key auto_increment,
    nome varchar(40),
    idade smallint,
    especialidade char(20),
    cpf decimal(11),
    cidade varchar(30),
    nroa int,
    foreign key (nroa) references ambulatorio(nroa)
);
 
create table pacientes (
	codp int not null primary key auto_increment,
    nome varchar(40),
    idade smallint,
    cidade char(30),
    cpf decimal(11),
    doenca varchar(40)
);
 
create table funcionarios (
	codf int primary key auto_increment,
    nome varchar(40),
    idade smallint,
    cpf decimal(11),
    cidade varchar(30),
    salario decimal(10)
);
 
create table consultas (
	id int primary key auto_increment,
    codm int,
    codp int,
    data date,
    hora time,
    foreign key (codp) references pacientes(codp)
);    
    
    
    -- Add dados na tabela Ambulatorio
insert into Ambulatorio(andar, capacidade) values (1,30);
insert into Ambulatorio(andar, capacidade) values (1,50);
insert into Ambulatorio(andar, capacidade) values (2,40);
insert into Ambulatorio(andar, capacidade) values (2,25);
insert into Ambulatorio(andar, capacidade) values (2,55);
 
-- Add dados na tabela Medicos
 
insert into medicos (nome, idade, especialidade,cpf, cidade ,nroa) values ('João',40,'ortopedista',10000100000, 'Florianopolis',1);
insert into medicos (nome, idade, especialidade,cpf, cidade ,nroa) values ('Maria',42,'traumatologia',10000110000, 'Blumenau',2);  
insert into medicos (nome, idade, especialidade,cpf, cidade ,nroa) values ('Pedro',51,'pediatria',11000100000, 'São José',2);
insert into medicos (nome, idade, especialidade,cpf, cidade ,nroa) values ('Carlos',28,'ortopedista',11000110000, 'Joinville', null);
insert into medicos (nome, idade, especialidade,cpf, cidade ,nroa) values ('Marcia',33,'neurologia',11000111000, 'Biguacu',2);
 
-- Add dados na tabela Pacientes
insert into pacientes (nome, idade, cidade, cpf, doenca) values ('Ana', 20, 'Florianopolis',20000200000, 'gripe');
insert into pacientes (nome, idade, cidade, cpf, doenca) values ('Paulo', 24, 'Palhoca',20000220000, 'fratura');
insert into pacientes (nome, idade, cidade, cpf, doenca) values ('Lucia', 30, 'Biguacu',22000200000, 'tendinite');
insert into pacientes (nome, idade, cidade, cpf, doenca) values ('Carlos', 28, 'Joinville',11000110000, 'sarampo');
 
-- Add dados na tabela Funcionarios
insert into funcionarios (nome, idade, cpf, cidade,salario) values ('Rita', 32, 20000100000, 'São José',1200);
insert into funcionarios (nome, idade, cpf, cidade,salario) values ('Maria', 55, 30000110000, 'Palhoça',1220);
insert into funcionarios (nome, idade, cpf, cidade,salario) values ('Caio', 45, 41000100000, 'Florianopolis',1100);
insert into funcionarios (nome, idade, cpf, cidade,salario) values ('Carlos', 44, 51000110000, 'Florianopolis',1200);
insert into funcionarios (nome, idade, cpf, cidade,salario) values ('Paula', 33, 61000111000, 'Florianopolis',2500);
 
-- Add Dados na tabela consultas
insert into consultas (codm,codp,data,hora) values (1,1,'2006-06-12','14:00');
insert into consultas (codm,codp,data,hora) values (1,4,'2006-06-13','10:00');
insert into consultas (codm,codp,data,hora) values (2,1,'2006-06-13','09:00');
insert into consultas (codm,codp,data,hora) values (2,2,'2006-06-13','11:00');
insert into consultas (codm,codp,data,hora) values (2,3,'2006-06-14','14:00');
insert into consultas (codm,codp,data,hora) values (2,4,'2006-06-14','17:00');
insert into consultas (codm,codp,data,hora) values (3,1,'2006-06-19','18:00');
insert into consultas (codm,codp,data,hora) values (3,3,'2006-06-12','10:00');
insert into consultas (codm,codp,data,hora) values (3,4,'2006-06-19','13:00');
insert into consultas (codm,codp,data,hora) values (4,4,'2006-06-20','13:00');
insert into consultas (codm,codp,data,hora) values (4,4,'2006-06-22','19:30');
  
  
  select * from medicos;
  
  alter table consultas add foreign key (codm) references medicos(codm);
  
  
  select * from medicos as m inner join consultas as c on m.codm =  c.codm;
  
  select * from medicos as m inner join consultas as c on m.codm =  c.codm;
  
  select c.id, p.nome, c.data, c.hora, m.nome, m.especialidade
  from medicos as m inner join consultas as c on m.codm - c.codm
  inner join pacientes as p on c.codp = c.codp;
  
    select * from pacientes;
    
    use ambulatorio_db;
    
    select c.id, p.nome, c.data, c.hora, m.nome, m.especialidade
  from medicos as m inner join consultas as c on m.codm - c.codm
  inner join pacientes as p on c.codp = c.codp;
  
  use clinica_db;
select c.id, p.nome, c.data, c.hora, m.nome, m.especialidade
from medicos as m inner join consultas as c on m.codm - c.codm
inner join pacientes as p on c.codp = c.codp;


--retorna consulta dentro de um intervalo de tempo
select c.id consulta, p.nome as paciente, c.data as data_consulta, c.hora as hora_consulta, m.nome medico, m.especialidade
from medicos as m join consultas as c on c.codm = m.codm
join pacientes as p  on p.codp = c.codp
where c.data between '2006-06-13' and '2006-06-20';


--retorna consulta dentro de um intervalo de tempo - exceto uma data específica

select c.id consulta, p.nome as paciente, c.data as data_consulta, c.hora as hora_consulta, m.nome medico, m.especialidade
from medicos as m join consultas as c on c.codm = m.codm
join pacientes as p  on p.codp = c.codp
where c.data between '2006-06-13' and '2006-06-20' and c.data <> '2006-06-14';

--

select * from ambulatorio;
--retorna capacidade média
select avg(capacidade) from ambulatorio;

select * from ambulatorio where capacidade in (25,55);

--ou conforme abaixo caso eu não saiba o intervalo exato - retorna todos dentro de um intervalo
select * from ambulatorio
 where capacidade in (select capacidade from ambulatorio where capacidade between 25 and 55);

select capacidade from ambulatorio where capacidade = 25;

select * from ambulatorio where capacidade in (select capacidade from ambulatorio where capacidade = 25);

select c.id consulta, p.nome as paciente, c.data as data_consulta, c.hora as hora_consulta, m.nome medico, m.especialidade 
from medicos as m join consultas as c on c.codm - m.codm
join pacientes as p on p.codp where c.data in('2024-11-01','2006-06-12','2006-06-20');
  
  use clinica_db;
  
  select * from medicos;
  use ambulatorio_db;
  select * from consultas;
  select * from pacientes;
    select * from funcionarios;
        select * from ambulatorio;
        
        select sum(capacidade) as TotalAndar from ambulatorio;
        select sum(capacidade) as TotalAndar2  from ambulatorio where andar = 2;
        select sum(capacidade) from ambulatorio where andar = 2;
    
    select nome, cpf, idade from medicos where idade < 40 or especialidade # 'traumatologia';
    
    select avg(salario) from funcionarios; 
    
    select min(salario) as minimo, max(salario) as maximo from funcionarios where idade > 40;
    
    select count(distinct especialidade) from medicos;
    
    select distinct especialidade from medicos;
    
    select min(salario) as minino, max (salario) as máximo 
from funcionários where idade > 40;


select avg(distinct salario) as mediaSalarial from funcionarios;

select andar, count(andar) from ambulatorio;

select * from medicos where nome not like 'm%'; 
--Retorna todos os registros da tabela medicos onde o valor da coluna nome não começa com a letra "m"
select cpf, nome from medicos where nroa is not null;
select * from consultas where hora not between '14:00' and '18:00';

select cpf, nome, nroa from medicos where nroa is not null;

select * from medicos where cidade = 'florianopolis' 
and especialidade in ('ortopedista','traumatologia','cardiologia');

select * from medicos where cidade = 'florianopolis' 
and especialidade not in ('ortopedista','traumatologia','cardiologia');


select * from consultas;
select * from consultas
where hora > '12:00' and data > '2006-06-19';

select * from pacientes;

select nome, idade from pacientes where cidade <> 'florianopolis';

select * from consultas 
where data < '2006-06-14' or data > '2006-06-20';


select * from pacientes;
select nome, idade from pacientes;

select * from funcionarios;
select distinct cidade from funcionarios;

select distinct cidade from funcionarios;


select min(salario) as minino, max (salario) as maximo 
from funcionarios where cidade = 'florianopolis';

select min(salario) as minimo, max(salario) as maximo 
from funcionarios where cidade =  'florianopolis';

select * from consultas;

select max(hora) from consultas
where data = '2006-06-13'; 

select * from medicos; 

select * from ambulatorio;

select * from funcionarios;



select avg(idade) as mediaIdade, sum(nroa) as nroa
from medicos;


select codf, nome, salario - (salario * 0.20) as SalarioLiquido from funcionarios;

SELECT nome FROM funcionarios
WHERE nome LIKE '%a';

select * from funcionarios;
SELECT nome, cpf FROM funcionarios 
WHERE cpf NOT LIKE '%00000%';


select * from medicos;

select nome, especialidade from medicos;
WHERE nome LIKE '_o%o';

select * from pacientes;

select codp, nome, doenca from pacientes 
where idade > '25' and  doenca in ('tendinite', 'fratura', 'gripe', 'sarampo');



--1) Buscar o nome e o CPF dos médicos com menos de 40 anos ou com especialidade diferente de traumatologia ​

select * from medicos;

select nome, cpf from medicos 
where idade < '40' or especialidade <> 'traumatologia';

--2) Buscar todos os dados das consultas marcadas no período da tarde após o dia 19/06/2006​
select * from consultas;
select * from consultas
where data > '2006-06-19' and hour(hora) >= 12 and hour(hora) < 18;

--3) Buscar o nome e a idade dos pacientes que não residem em Florianópolis​
select *from pacientes;

select nome, idade from pacientes 
where cidade <> 'florianopolis';

--4) Buscar a hora das consultas marcadas antes do dia 14/06/2006 e depois do dia 20/06/2006​

select * from consultas;
select data, hora from consultas 
where data < '2006-06-14' or data > '2006-06-20';

--5) Buscar o nome e a idade (em meses) dos pacientes​

select * from pacientes;
select nome, idade * 12
from pacientes;


--6) Em quais cidades residem os funcionários?​
 
select distinct cidade from funcionarios;

--7) Qual o menor e o maior salário dos funcionários da Florianópolis?​

select min(salario) as minimo, max(salario) as maximo 
from funcionarios where cidade =  'florianopolis';

--10) Qual o horário da última consulta marcada para o dia 13/06/2006?​

select max(hora) from consultas
where data = '2006-06-13'; 

--11) Qual a média de idade dos médicos e o total de ambulatórios atendidos por eles?​

select avg(idade) as mediaIdade, sum(nroa) as nroa
from medicos;

--12) Buscar o código, o nome e o salário líquido dos funcionários. O salário líquido é obtido pela diferença entre o salário cadastrado menos 20% deste mesmo salário​

select * from funcionarios;

select codf, nome, salario - (salario * 0.20) as SalarioLiquido from funcionarios;

--13) Buscar o nome dos funcionários que terminam com a letra “a”​

SELECT nome FROM funcionarios
WHERE nome LIKE '%a';

--14) Buscar o nome e CPF dos funcionários que não possuam a seqüência “00000” em seus CPFs​

select * from funcionarios;

select nome, cpf from funcionarios 
where cpf not like '%00000%';

--15) Buscar o nome e a especialidade dos médicos cuja segunda e a última letra de seus nomes seja a letra “o”​

select * from medicos;

select nome, especialidade from medicos
where nome like '_o%o'; 


--16) Buscar os códigos e nomes dos pacientes com mais de 25 anos que estão com tendinite, fratura, gripe e sarampo 

select * from pacientes;

select codp, nome from pacientes 
where idade > '25' and  doenca in ('tendinite', 'fratura', 'gripe', 'sarampo');


--19/02/2025

select * from pacientes, consultas

select cpf, nome, hora data from pacientes, consultas 
where hora > '12:00' and pacientes.codp =  consultas.codp;


select * from medicos

select m2.nome, m2.especialidade from medicos m1, medicos m2
where m1.nome = 'João' 
and m1.especialidade = m2.especialidade

select * from pacientes join consultas on Pacientes.codp = 
Consultas.codp


select * from medicos join consultas 
on medicos.codm = consultas.codm
where data = '2006-06-13';


--retorna consultas do dia 13

select m.nome as medico, m.especialidade, m.cidade, a.andar, m.nroa, c.data, c.hora, p.nome as paciente, p.doenca
from medicos as m join consultas as c on m.codm = c.codm
join pacientes as p on p.codp = c.codp
join ambulatorio as a on a.nroa = m.nroa
where data = '2006-06-13';

--ou na forma abaixo

select m.nome as medico, m.especialidade, m.cidade, m.nroa as ambulatorio, a.andar, c.data, c.hora, 
p.nome as paciente, p.doenca 
from medicos as m 
join consultas as c on m.codm = c.codm 
join pacientes as p on p.codp = c.codp 
join ambulatorio as a on a.nroa = m.nroa
where data = '2006-06-13';


Select * from Pacientes 
natural join Consultas;

select * from pacientes;

select * from consultas;


Select * from medicos as m
inner join consultas as c on c.codm  = c.codp
Where data = '2006-06-13';

Select nome
From medicos natural join
Consultas
Where data = '2006-06-13';


select * from consultas;
 
select * from pacientes p left join consultas c on p.codp = c.codp;
 
select * from medicos m left join consultas c on m.codm = c.codm;
select * from medicos m right join consultas c on m.codm = c.codm;

select * from medicos, consultas where especialidade = 'ortopedista' and data < '2006-06-16';

select nome, cpf, idade from medicos, consultas where especialidade = 'ortopedista' and data < '2006-06-16';

-- tarefa sobre junção

--1) nome e CPF dos médicos que também são pacientes do hospital

select nome, cpf from medicos 
where codm in (select codp from pacientes);

--2) pares (código, nome) de funcionários e de médicos que residem na mesma cidade

select * from funcionarios;
select * from medicos;

select codf, funcionarios.nome as funcionario, codm, medicos.nome as medico, funcionarios.cidade as cidade_funcionario, medicos.cidade as cidade_medico 
from funcionarios 
join medicos on funcionarios.cidade = medicos.cidade;

select codf, funcionarios.nome, codm, medicos.nome, funcionarios.cidade as cidadef, medicos.cidade as cidadem 
from funcionarios 
join medicos on funcionarios.cidade = medicos.cidade;


--3) código e nome dos pacientes com consulta marcada para horários após às 14 horas

select p.codp, p.nome, c.hora from pacientes as p
inner join consultas as c on p.codp = c.codp where c.hora > '14:00'; 


--4) número e andar dos ambulatórios utilizados por médicos ortopedistas

select nroa, andar from ambulatorio;

select * from medicos;

select ambulatorio.nroa, ambulatorio.andar from ambulatorio
inner join medicos on ambulatorio.nroa = medicos.nroa 
where medicos.especialidade = 'ortopedista';


--5) nome e CPF dos pacientes que têm consultas marcadas entre os dias 14 e 16 de junho de 2006

select * from pacientes;

select nome, cpf from pacientes 
where codp in (select codp from consultas where data >= '2006-06-14' and '2006-06-16');

select p.nome, p.cpf from pacientes p
inner join consultas c on p.codp = c.codp 
where c.data between '2006-06-14' and '2006-06-16';


--6) nome e idade dos médicos que têm consulta com a paciente Ana

select * from consultas, pacientes, medicos;

select m.nome, m.idade 
from medicos as m
join consultas as c on m.codm = c.codm
where c.codp = '1';

--com o nome do paciente
select m.nome, m.idade, p.nome as paciente
from medicos as m
join consultas as c on m.codm = c.codm
join pacientes p on p.codp = c.codp
where c.codp = '1';

--7) código e nome dos médicos que atendem no mesmo ambulatório do médico Pedro
e que possuem consultas marcadas para dia 14/06/2006

select * from medicos where nome = 'pedro';

select distinct m.codm, m.nome as medico
from medicos m join consultas c on m.codm =  c.codm
where m.nroa = 2 and c.data = '2006-06-14';

select * from medicos, consultas;

--retornou todos os medicos que atendem no ambulatorio 2
select nome, codm, nroa from medicos where nroa in (select nroa from ambulatorio where nroa=2);

-- para que o comando abaixo so retornou maria uma vez, use o distinct 
select distinct m.codm, m.nome from medicos m
join ambulatorio a on m.nroa = a.nroa
join consultas c on m.codm = c.codm
where a.nroa = (select nroa from medicos where nome = 'Pedro' and c.data = '2006-06-14');

select m.codm, m.nome from medicos m
join ambulatorio a on m.nroa = a.nroa
join consultas c on m.codm = c.codm
where a.nroa = (select nroa from ambulatorio where nroa = '2' and c.data = '2006-06-14');

--8) nome, CPF e idade dos pacientes que têm consultas marcadas com ortopedistas para dias anteriores ao dia 16

select * from consultas;
select * from pacientes;
select * from medicos;

select p.nome, p.cpf, p.idade 
from pacientes as p 
join consultas as c on p.codp = c.codp
join medicos as m on m.codm = c.codm
where m.especialidade = 'ortopedista' and c.data < '2006-06-16';

select p.nome, p.cpf, p.idade 
from pacientes p
join consultas c on p.codp = c.codp
join medicos m on c.codm = m.codm
where m.especialidade = 'ortopedista' and data < '2006-06-16';

--9) nome e salário dos funcionários que moram na mesma cidade do 
funcionário Carlos e possuem salário superior ao dele


select * from funcionarios;

select nome, salario from funcionarios where cidade = 'florianopolis' and salario > '1200';

select nome, salario from funcionarios 
where cidade = (select cidade from funcionarios where nome = 'Carlos')
and salario > (select salario from funcionarios where nome = 'Carlos');

select nome, salario from funcionarios where cidade = 'florianopolis' and salario > '1200';

select f.nome, f.salario from funcionarios f
join funcionarios s on f.cidade = s.cidade
where s.nome = 'Carlos' and f.salario > s.salario;

--10) dados de todos os ambulatórios e, para aqueles ambulatórios onde médicos dão atendimento, 
exibir também os seus códigos e nomes

select a.nroa as nroa, a.andar as andar, capacidade, m.codm as codm, m.nome as nome from ambulatorio a
left join medicos m on a.nroa = m.nroa;

select m.nome, m.codm, a.nroa, a.capacidade, a.andar
from medicos as m right join ambulatorio as a on a.nroa = m.nroa

--11) CPF e nome de todos os médicos e, para aqueles médicos com consultas marcadas, 
exibir os CPFs e nomes dos seus pacientes e as datas das consultas

select m.cpf as cpfMedico, m.nome as medico, p.cpf as cpfdPaciente, p.nome as paciente, c.data 
from medicos as m 
left join consultas as c on m.codm = c.codm
left join pacientes as p on c.codp = p.codp;

-- codigo do professor
select m.cpf as cpf_medico, m.nome as medico, cp.cpf as cpf_paciente, cp.paciente, cp.data
from medicos m
left join (
select c.codm, p.nome as paciente, p.cpf, c.data
	from consultas c join pacientes p on p.codp = c.codp
    ) cp on cp.codm = m.codm;

********** 21/02/25**********

Select nome From Medicos
Where codm in (select codm from Consultas
where data = '2006-06-13');


--busca medicos que é paciente
Select CPF From medicos
Where CPF in (select CPF from Pacientes)

--busca medicos que não é paciente
Select CPF, nome From medicos
Where CPF not in (select CPF from Pacientes)


--ou 
select nome from medicos
where codm in (select codm from consultas where data = '2006-06-13');

Select nome From medicos
Where codm = any (select distinct codm  from Consultas
where data = '2006-06-13');

select * from funcionarios
select nome from funcionarios where idade < any (select idade from funcionarios);


--busca onde cpf seja diferente de todos os pacientes
Select nome, cpf From funcionarios
Where CPF <> all (Select CPF From Pacientes);

Select nome, cpf From medicos
Where CPF <> all (Select CPF From Pacientes);

--******************* 24-02****************

select nome from medicos where codm = any (select codm from consultas where data = '2006-06-12');
select nome from medicos where codm in (select codm from consultas where data = '2006-06-12');

select m.nome, c.data, c.paciente from medicos m
natural join (select data, nome as paciente from consultas natural join pacientes) c

select nome, cpf from medicos where cpf <> 10000100000 and especialidade = 'ortopedista';

--funções sql 
in ()
all ()
exists
any ()
	
select nome from medicos m where exists
(select * from Consultas where data = '2006-06-13' and codm = m.codm)

select nome from medicos m where not exists
(select * from Consultas where data = '2006-06-13' and codm = m.codm)
    
select p.nome from pacientes p where not exists
(select * from medicos m where not exists 
(select * from consultas c where c.codm = m.codm and c.codp = p.codp));

select m.*, c.hora from medicos m join 
(select codm, hora from Consultas where data = '2006-06-13')
c on c.codm = m.codm;

select amb.*, med.nome as medico from 
(select nroa, andar from ambulatorio) amb 
join (select nroa, nome from medicos where cidade = 'Florianopolis') as med
on med.nroa = amb.nroa;

select * from pacientes order by nome;
select * from pacientes order by nome desc;
select salario, nome from funcionarios order by salario desc, nome desc;

select * from funcionarios

select distinct nome, salario from funcionarios order by salario asc limit 3
 and (select nome, salario from funcionarios order by salario desc limit 5)
 
select nome, salario from funcionarios order by nome asc limit 3) 
union all
(select nome, salario from funcionarios order by nome desc limit 2);
 
select * from (select nome, salario from funcionarios order by nome asc limit 3)as um
union all
(select nome, salario from funcionarios order by nome desc limit 2) as d;

with primeiros as (select nome, salario from funcionarios order by nome asc limit 3), 
ultimos as (select nome, salario from funcionarios order by nome desc limit 2 )
select nome, salario from primeiros
union all
select nome, salario from ultimos;


--os tres primeiros em ascendente e os dois ultimos em descendente
SELECT distinct nome FROM (SELECT nome FROM funcionarios
    ORDER BY nome ASC LIMIT 3
) AS primeiros
UNION ALL
SELECT nome FROM (SELECT distinct nome
    FROM funcionarios ORDER BY nome desc
    LIMIT 2
) AS ultimos;


--****************
select salario, nome from Funcionarios order by salario desc,
nome limit 2,3


select * from medicos;

select count(distinct especialidade) from medicos;  

--conta numero de medicos por especialidade.
select especialidade, count(*) from Medicos
group by especialidade

-- ex.: numero de pacientes por doença
select * from pacientes

select doenca, count(*) from pacientes
group by doenca

select especialidade, count(*) from medicos
group by especialidade having count(*) > 1

select especialidade, count(*) from medicos
group by especialidade having count(*) = 'pediatria'

delete from consultas where hora > '17:00:00' and codm in 
(select codm from medicos where nome = 'Maria')

update medicos set nroa = NULL where not exists
(select * from medicos m where m.codm <> medicos.codm and m.nroa = medicos.nroa)

insert into MedNovos
select codm, nome, especialidade from medicos
where idade < 21;
 
-- ******* 26/02/2025*****
 --CREATE VIEW
 create view medicos_experientes AS
 select a.nroa, a.andar, a.capacidade, m.nome as medico, m.especialidade, m.cidade
 FROM ambulatorio as  a natural join medicos m where m.idade >= 40;

select * from medicos_experientes;

select * from medicos_experientes WHERE capacidade = 30;

select * from medicos_experientes WHERE cidade = 'são jose';

CREATE OR REPLACE VIEW  medicos_experientes AS
 select a.nroa, a.andar, a.capacidade, m.nome as medico, m.especialidade, m.cidade
 FROM ambulatorio as  a natural join medicos m where m.idade >= 40;

DROP view medicos_experientes;

create view medicos_experientes AS
 select a.nroa, a.andar, a.capacidade, m.nome as medico, m.especialidade, m.cidade, M.IDADE
 FROM ambulatorio as  a natural join medicos m where m.idade >= 40;

SELECT * FROM CONSULTAS;
SELECT * FROM medicos;
SELECT * FROM pacientes;
select * from ambulatorio;

select c.id as cod_consulta, c.data, c.hora, m.nome, m.especialidade, c.codp
from consultas c join medicos m on m.codm = c. codm join pacientes p on p.codp = c.codp;

select c.id as cod_consulta, c.data, c.hora, m.nome, m.especialidade, m.cidade, c.codp, p.nome as paciente, p.cidade
from consultas c join medicos m on m.codm = c. codm join pacientes p on p.codp = c.codp;

--comando sem view
select c.id as cod_consulta, c.data, c.hora,
a.nroa, a.andar,
m.nome, m.especialidade, m.cidade as cid_medico, 
c.codp, p.nome as paciente, p.cidade as cid_paciente
from consultas c join medicos m on m.codm = c. codm 
join pacientes p on p.codp = c.codp
join ambulatorio a on a.nroa = m.nroa;

create view relatorio_consultas as 
select c.id as cod_consulta, c.data, c.hora,
a.nroa, a.andar,
m.nome, m.especialidade, m.cidade as cid_medico, 
c.codp, p.nome as paciente, p.cidade as cid_paciente
from consultas c join medicos m on m.codm = c. codm 
join pacientes p on p.codp = c.codp
join ambulatorio a on a.nroa = m.nroa;

select * from relatorio_consultas

--treinar

--Certifique-se de que a relação entre as tabelas esteja correta 

SELECT * FROM CONSULTAS;
SELECT * FROM medicos;
SELECT * FROM pacientes;
select * from ambulatorio;
select * from funcionarios;

create view medico_paciente as
select m.nome as medico, m.especialidade, p.nome as paciente,
c.data, c.hora
from consultas c join medicos m on m.codm = c. codm 
join pacientes p on p.codp = c.codp
join ambulatorio a on a.nroa = m.nroa;

select * from medico_paciente;

-- create procedure
DELIMITER ;

CREATE procedure nome_procedure ()
begin
	select * from nome da tabela;
    
end 

delimiter ;

-- para chamar
CALL listar nome_procedure ();

delimiter $$

create procedure atualizar_valr (inout valor decimal (10,2))
begin
set valor = valor * 1.10;
end$$

delimiter ;

set @preco = 100;
call atualizar_valor(preco));
select @preco;

delimiter ;

delimiter $$

create procedure contar_consultas(out total int)
begin
	SELECT count(*) into total from consultas;
end$$

delimiter ;

call contar_consultas(3);
select * from pacientes;
-- drop procedure if existis contar_consultas;

delimiter $$

create procedure verificar_paciente (IN id_paciente INT)
BEGIN
	if id_paciente is null then
		SELECT 'ID INVALIDO' AS MENSAGEM;
	else 
		select * from pacientes where codp = id_paciente;
	end if;
end$$

delimiter ;


************** PROJETO BANCO DE DADOS ************

create database estacionamento;	
use estacionamento;	

--TABELA USUARIOS
create table usuarios(			
coduser int not null primary key auto_increment,			
nome varchar(45),			
matricula varchar(100)		
);			

--ADD DADOS TABELA USUÁRIOS			
insert into usuarios (nome, matricula) values ('Ricardo', 8112024);	

SELECT * FROM USUARIOS;

TABELA CLIENTES

create table clientes(			
codcli INT not null primary key auto_increment,			
nome varchar (40),			
contato decimal (10)			
);


 - - 	add dados tabela CLIENTES
insert into clientes (nome, contato) values ('Danielle',997490929);											
insert into clientes (nome, contato) values ('Fabio',912309870);											
insert into clientes (nome, contato) values ('Henrique',987731230);											
insert into clientes (nome, contato) values ('Tatiane',999966770);											
insert into clientes (nome, contato) values ('Jorge',905439985);											
insert into clientes (nome, contato) values ('Isabel',977848854);


SELECT * FROM CLIENTES;

--TABELA VEICULOS


create table veiculos(
codveic int not null primary key auto_increment,
tipo varchar (50),
marca varchar (50),
modelo varchar (50),
placa varchar (15),
codcli int
foreign key (codcli) references clientes (codcli)
);



 - - 	add dados tabela veiculos
insert into veiculos (tipo, marca, modelo, placa, codcli) values ('carro','Chevrolet','Onix','DN3E11',1);
insert into veiculos (tipo, marca, modelo, placa, codcli) values ('moto','Honda','CB-500','FB4E11',2);	
insert into veiculos (tipo, marca, modelo, placa, codcli) values ('moto','Yanaha','Teneré','HQ2910',3);	
insert into veiculos (tipo, marca, modelo, placa, codcli) values ('moto','Honda','Bis','TT6D11',4);	
insert into veiculos (tipo, marca, modelo, placa, codcli) values ('carro','VW','Virtus','JR8D11',5);	
insert into veiculos (tipo, marca, modelo, placa, codcli) values ('carro','Renault','Sandeiro','IS6E11',6);


select * from veiculos;
use estacionamento;

--TABELA ESTACIONAMENTO

create table estacionamento(			
codest int not null primary key auto_increment,			
coduser int,			
codcli int, 
data date, 
hora time,			
status varchar (50),		
foreign key (coduser) references usuarios (coduser),			
foreign key (codcli) references clientes (codcli)			
);			


- - 	add dados tabela Estacionamento								
insert into estacionamento (coduser, codcli, data, hora, status) values (1, 2,'2024-11-02','09:00','vagou');									
insert into estacionamento (coduser, codcli, data, hora, status) values (1, 4, '2024-11-02','11:00','vagou');									
insert into estacionamento (coduser, codcli, data, hora, status) values (1,6, '2024-11-02','13:30','estacionado');									
insert into estacionamento (coduser, codcli, data, hora, status) values (1,3, '2024-11-02','15:25','estacionado');									
insert into estacionamento (coduser, codcli, data, hora, status) values (1,1, '2024-11-03','10:00','estacionado');									
insert into estacionamento (coduser, codcli, data, hora, status) values (1,6, '2024-11-03','12:00','vagou');									
insert into estacionamento (coduser, codcli, data, hora, status) values (1,3, '2024-11-03','14:00','estacionado');									
insert into estacionamento (coduser, codcli, data, hora, status) values (1,5, '2024-11-04','10:30','estacionado');									

select * from usuarios;
select * from clientes;
select * from veiculos;
select * from estacionamento;

select * from usuarios, clientes, veiculos, estacionamento
where status = 'estacionado';

delete from estacionamento
where codest = 9;

update estacionamento 
set coduser = 1
where codest = 1;

--Verificar com o professor sobre a tabela estacionamento 
(O estacionamento identificará que é os operadores; os clientes; os veículos; 
data e hora de entrada dos veículos no estacionamento (referenciar pelo proprietário, 
ou seja, o cliente); e o status que informará se os veículos estão ou não estacionados 
nas vagas do estacionamento.)
mas na planilha só tem os campos id/ operadori 	cliente/ data/ hora	/ status

select * from usuarios;
select * from clientes;
select * from veiculos;
select * from estacionamento;

--Fazer uma consulta que liste os veículos no estacionamento 
--e traga a data e hora que estacionou; os nomes e contatos dos proprietários; 
--tipo, placa, modelo dos veículos estacionados e o operador do estacionamento que atendeu.

select e.data, e.hora, c.nome, c.contato, v.tipo, v.placa, v.modelo, e.status
from veiculos v 
join clientes c on c.codcli = v.codcli
join veiculos u on v.codcli = u.codcli
join estacionamento e on e.codcli = v.codcli
where e.status = 'estacionado';

--não consegui incluir o operador na query acima


--Cadastrar Matheus, contato 993210589, o proprietário da moto XXT da BMW, 
que estacionou no dia 04/11/2024 às 16:00 que ainda permanece no estacionamento. 

insert into clientes (nome, contato) values ('Matheus',993210589);
insert into veiculos (tipo, marca, modelo, placa, codcli) values ('moto','BMW','XXT','DN9E11',7);
insert into estacionamento (coduser, codcli, data, hora, status) values (1,7, '2024-11-04','16:00','estacionado');	

	
--Criar uma consulta que informe os detalhes específico do segundo veículo estacionado no dia 02/11/2024 
-o nome e o contato do proprietário; o tipo, placa e modelo do veículo; e o nome do operador do estacionamento que o atendeu.


select * from estacionamento;

select v.codveic, e.data, e.hora, e.status, c.nome, c.contato, v.tipo, v.placa, v.modelo, u.nome
from estacionamento e 
join clientes c on c.codcli = e.codcli
join veiculos v on v.codcli = e.codcli
join usuarios u on u.coduser = e.coduser
where codveic = 2 and data = '2024-11-02';

--**********Fazer uma consulta que mostre o total de motos e o total de carros no estacionamento******

select * from estacionamento;

select  
sum(tipo = 'carro') as Total_carro,
sum(tipo = 'moto') as Total_moto
from veiculos v
join estacionamento e on e.codcli = v.codcli
where status = 'estacionado';

--***Fazer um consulta que liste os clientes e coloque os nomes em ordem decrescente.

select * from clientes order by nome desc;

--***Atualizar os status dos veículos estacionados no dia 02/11/2024 para 'vagou'.

select * from estacionamento;

update estacionamento set status = 'vagou'
where data = '2024-11-02' and status = 'estacionado'; 

--***Atualizar o status da moto pertencente ao Matheus para 'vagou'.

update estacionamento set status = 'vagou'
where codcli = 7 and status = 'estacionado';

--***Excluir o cadastro do proprietário Matheus e da sua moto; 


delete from estacionamento
where codcli = 7;

delete from veiculos
where codveic = 7;

delete from clientes
where codcli = 7;


select * from clientes;
select * from veiculos;
select * from estacionamento;


select  
sum(tipo = 'carro') as Total_carro,
sum(tipo = 'moto') as Total_moto
from veiculos v
join estacionamento e on e.codcli = v.codcli
where status = 'estacionado';

****************28/02***********
use clinica_db;

select * from consultas;
select * from medicos;
select * from consultas;
select * from ambulatorio;
select * from pacientes;


--Buscar o que se pede utilizando subconsultas na cláusula FROM:

--1) todos os dados das consultas marcadas para a médica Maria;

select * FROM consultas Where codm = 2;

--2) código e nome dos pacientes com consulta marcada para horários após às 14 horas;
select p.codp, p.nome, c.hora from pacientes p
join consultas c on c.codp = p.codp
where c.hora > '14:00';

--3) nome e cidade dos pacientes que têm consultas marcadas com ortopedistas;

select p.nome, p.cidade, m.especialidade
from pacientes p
join consultas c on c.codp = p.codp
join medicos m on m.codm = p.codp
where especialidade = 'ortopedista';


select * from consultas;
select * from medicos;
select * from consultas;
select * from ambulatorio;
select * from pacientes;

--4) nome e CPF dos pacientes de Florianópolis que não têm consultas com o médico João.

select p.nome, p.cpf, p.cidade, c.codm
from pacientes p
left join consultas c on c.codp = p.codp and nome = 'joao'
where p.cidade = 'florianópolis' and c.codp is null;

***********  permissões  **************

--permissões
create user 'usuario'@'localhost' IDENTIFIED BY 'senha123'

create user 'usuario_remoto'@'%' IDENTIFIED BY 'senha123'

Abaixo, uma lista das permissões do MySQL:

SELECT: Ver dados.
INSERT: Adicionar novos dados.
UPDATE: Modificar dados.
DELETE: Excluir dados.
CREATE: Criar tabelas/bancos.
ALTER: Modificar estruturas.
DROP: Excluir tabelas/bancos.
GRANT: Dar permissões.
REVOKE: Remover permissões.
ALL PRIVILEGES: Todas as permissões.

GRANT ALL PRIVILEGES ON db_clilcina.* to 'usuario'@'localhost';

show grants for 'usuario'@'localhost';

grant select on db_clinica.to 'usuario_remoto'@'%';

show grants for 'usuario_remoto'@'%';

grant insert, update, delete, select on db_clinica.* to 'usuario_remoto'@'%';

revoke delete on db_clinica.* from 'usuario_remoto'@'%';

create user 'usuario2'@'localhost' IDENTIFIED BY 'senha123'

grant all privileges on *.* to 'usuario2'@'localhost'

show grants for 'usuario2'@'localhost';
*************************CORREÇÃO 28-02-2025 - **********
--2) pares (código, nome) de funcionários e de médicos que residem na mesma cidade

select codf, funcionarios.nome as funcionario, codm, medicos.nome as medico, funcionarios.cidade as cidade_funcionario, medicos.cidade as cidade_medico 
from funcionarios 
join medicos on funcionarios.cidade = medicos.cidade;

--cod professor
select f.codf, f.nome as funcionário, m.codm, m.nome as medico
from medicos m 
join funcionarios f on m.cidade = f.cidade;

--4) número e andar dos ambulatórios utilizados por médicos ortopedistas

select nroa, andar from ambulatorio;

select * from medicos;

select ambulatorio.nroa, ambulatorio.andar from ambulatorio
inner join medicos on ambulatorio.nroa = medicos.nroa 
where medicos.especialidade = 'ortopedista';

--professor
select a.nroa, a.andar
from ambulatorio a
join medicos m on m.nroa = a.nroa
where m.especialidade = 'ortopedista';

--ou
select a.nroa, a.andar
from ambulatorio a
join medicos m on m.nroa = a.nroa
where m.especialidade like 'ortoped%';

--5) nome e CPF dos pacientes que têm consultas marcadas entre os dias 14 e 16 de junho de 2006

select * from pacientes;


select p.nome, p.cpf from pacientes p
inner join consultas c on p.codp = c.codp 
where c.data between '2006-06-14' and '2006-06-16';

select p.nome, p.cpf from pacientes p
natural join consultas c 
where c.data in ('2006-06-14','2006-06-15','2006-06-16');

select nome, cpf from pacientes 
where codp in (select codp from consultas where data >= '2006-06-14' and '2006-06-16');




*******-----********-----*******

--1) nome e CPF dos médicos que também são pacientes do hospital;

select m.nome, m.cpf from medicos m
natural join pacientes p;  

select m.nome, m.cpf from medicos m 
join pacientes p on m.cpf = p.cpf;

--2) nome e idade dos médicos que têm consulta com a paciente Ana;

select m.nome, m.idade from medicos 
join pacientes p on p.codp = m.codp
where codp = 1;


----------------- estudo de caso Clínica. Exercícios Group By e Order By.------
select * from consultas;
select * from medicos;
select * from funcionarios;
select * from ambulatorio;
select * from pacientes; 

--1) os dados de todos os funcionários ordenados pelo salário (decrescente) e pela idade (crescente). Buscar apenas os três primeiros funcionários nesta ordem

select * from funcionarios order by salario desc, idade asc limit 3;

--2) o nome dos médicos e o número e andar do ambulatório onde eles atendem, ordenado pelo número do ambulatório

select m.nome as medico, a.nroa, a.andar 
from medicos m
join ambulatorio a on a.nroa = a.nroa
order by a.nroa asc;

--3) o nome do médico e o nome dos pacientes com consulta marcada, ordenado pela data e pela hora.

select m.nome as medico, p.nome as paciente, c.data, c.hora 
from medicos m 
left join consultas c on c.codm = m.codm
left join pacientes p on p.codp = c.codp
order by data asc, hora asc;

--4) idades dos médicos e o total de médicos com a mesma idade

select idade, count(idade) as total_medicos from medicos
group by idade
order by idade;

--5) datas e o total de consultas em cada data, para horários após às 12 hs.
select * from consultas;

select count(data) as total_consultas
from consultas
where hora > '12:00'

select data from consultas
where hora > '12:00';


use clinica_db;
--6) andares onde existem ambulatórios e a média de capacidade por andar

select * from ambulatorio;

select avg(capacidade) as media_capacidade from ambulatorio
where andar = 1;
select avg(capacidade) as media_capacidade from ambulatorio
where andar = 2;


--7) andares onde existem ambulatórios cuja média de capacidade no andar seja >= 40

select * from ambulatorio;

select avg(capacidade) as media_capacidade from ambulatorio
where andar = 1;

select avg(capacidade) as media_capacidade from ambulatorio
where andar = 2 and capacidade >= 40;


--8)  nome dos médicos que possuem mais de uma consulta marcada

select * from consultas;

select nome as medico, c.data from medicos m 
join consultas c on c.codm = m.codm
where codp > 1;
