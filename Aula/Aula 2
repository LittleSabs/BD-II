CREATE DATABASE db_ibge;
USE db_ibge;
/*Criar a tabela tb_regioes*/
CREATE TABLE tb_regioes 
(  
  	id INT NOT NULL PRIMARY KEY,  
	nome VARCHAR(40) NOT NULL,  
	sigla VARCHAR(2) NOT NULL
) ;
insert into tb_regioes (id,nome,sigla) 
Values
(1, 'Norte', 'N'),
(2, 'Nordeste', 'NE'),
(3, 'Sudeste', 'SE'),
(4, 'Sul', 'S'),
(5, 'Centro-Oeste', 'CO');

CREATE TABLE tb_estados (
  id INT NOT NULL PRIMARY KEY,
  nome VARCHAR(60) NOT NULL,
  sigla VARCHAR(2) NOT NULL,
  id_regiao INT DEFAULT NULL,
  FOREIGN KEY (id_regiao) REFERENCES tb_regioes (id)
);

insert into tb_estados (id,nome,sigla, id_regiao) Values
(11, 'Rondônia', 'RO', 1),
(12, 'Acre', 'AC', 1),
(13, 'Amazonas', 'AM', 1),
(14, 'Roraima', 'RR', 1),
(15, 'Pará', 'PA', 1),
(16, 'Amapá', 'AP', 1),
(17, 'Tocantins', 'TO', 1),
(21, 'Maranhão', 'MA', 2),
(22, 'Piauí', 'PI', 2),
(23, 'Ceará', 'CE', 2),
(24, 'Rio Grande do Norte', 'RN', 2),
(25, 'Paraíba', 'PB', 2),
(26, 'Pernambuco', 'PE', 2),
(27, 'Alagoas', 'AL', 2),
(28, 'Sergipe', 'SE', 2),
(29, 'Bahia', 'BA', 2),
(31, 'Minas Gerais', 'MG', 3),
(32, 'Espírito Santo', 'ES', 3),
(33, 'Rio de Janeiro', 'RJ', 3),
(35, 'São Paulo', 'SP', 3),
(41, 'Paraná', 'PR', 4),
(42, 'Santa Catarina', 'SC', 4),
(43, 'Rio Grande do Sul', 'RS', 4),
(50, 'Mato Grosso do Sul', 'MS', 5),
(51, 'Mato Grosso', 'MT', 5),
(52, 'Goiás', 'GO', 5),
(53, 'Distrito Federal', 'DF', 5);

select *from tb_regioes;
select nome from tb_regioes;
select * from tb_estados;
select nome, sigla from tb_estados;
select distinct id_regiao from tb_estados;

select *from tb_regioes
where nome='Sul';
select nome from tb_regioes
where id>= 3;
select * from tb_estados
where id_regiao= 3;



select * from tb_estados
where id_regiao=4 
or id_regiao=5;

select nome,id_regiao from tb_estados 
where id_regiao=2 
and sigla='AL'
or sigla='CE'
or sigla='PB';

select nome from tb_estados
where id_regiao <>2 and sigla='DF';

select nome from tb_estados
order by nome asc;

select nome from tb_estados
order by nome desc;

select nome, sigla from tb_estados
order by id_regiao, nome asc;

select nome from tb_estados
where nome like '%rio%';

select nome from tb_estados
where nome like 'a%';

select nome from tb_estados
where nome like '%a';

select nome,sigla from tb_estados
where nome like '____';
