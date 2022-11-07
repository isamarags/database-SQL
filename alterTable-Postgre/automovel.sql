create table Cliente (
  codigo integer primary key, 
  nome varchar(100), 
  rg char(7),
  cpf char(11),
  endereco varchar(255),
  telefone varchar(20)
);

create table Automovel (
  placa integer primary key, 
  cod_renavan char(11), 
  fabricante varchar(255),
  modelo varchar(255),
  ano int
);

create table Ocorrencia (
  num_ocorrencia integer primary key, 
  data date, 
  local varchar(255),
  descricao varchar(255)
);

-- Escreva o comando SQL para: 

-- a. Alterar o nome da tabela Automovel para Veiculo

alter table Automovel rename Veiculo;

-- b. Alterar nome da coluna nome da tabela Cliente para nome_cliente

alter table Cliente rename nome to nome_cliente;

-- c. Remover a coluna Endereço da tabela Cliente

alter table Cliente drop endereco;

-- d. Inserir a coluna tipo na tabela veiculo

alter table Veiculo add tipo varchar(255);

-- e. Inserir uma restrição na tabela Cliente para o CPF ser obrigatório.
alter table Cliente alter CPF set not null;
-- f. Alterar o tipo de dados da coluna CPF para varchar(15);
alter table Cliente alter CPF type varchar(15);

-- g. Remover a tabela ocorrência
drop table Ocorrencia;