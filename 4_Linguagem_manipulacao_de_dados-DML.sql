# Insira os dados de 2 (dois) Síndicos.

    describe sindico;
    insert into sindico
    (nome_sindico,endereco,telefone)
    values
    ('Mauro Souza','Rua da Alegria 60','(11)3223-5524');
    insert into sindico
    (nome_sindico,endereco,telefone)
    values
    ('Roberta Campos', 'Rua Felicidade 30','(19)3225-0012');
    select*from sindico;

# Insira os dados de 10 (dez) Proprietários.

    describe proprietario;
    insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
    ('123456-10','João Souza','(11)2222-5100','joao.souza@internet.com.br');
    insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
	('123456-11','Mauricio Souza','(11)3333-5100','mauricio.souza@internet.com.br');
    insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
	('123456-12','Deise Souza','(11)4444-5100','deise.souza@internet.com.br');
    insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
	('123456-13','Daniela Souza','(11)5555-5100','daniela.souza@internet.com.br');
     insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
	('123456-14','Ellen Olivera','(11)2020-5100','ellen.oliveira@internet.com.br');
    insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
	('123456-15','Matheus Olivera','(11)2021-5100','matheus.oliveira@internet.com.br');
    insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
	('123456-16','Wagner Olivera','(11)2220-5100','wagner.oliveira@internet.com.br');
    insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
	('123456-17','Robson Olivera','(11)2030-5100','robson.oliveira@internet.com.br');
    insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
	('123456-18','Maria Olivera','(11)2040-5100','Maria.oliveira@internet.com.br');
    insert into proprietario
    (rg_proprietario,Nome,Telefone,email)
    values
	('123456-19','Thiago Olivera','(11)2424-5100','thiago.oliveira@internet.com.br');
    select*from proprietario;

# Insira os dados de 2 (dois) Condomínios definido um Síndico para cada um.
describe condominio;
insert into condominio
(condominio,endereco,matricula_sindico)
values
('Pq dos Eucaliptos','Albatroz 65',1);
insert into condominio
(condominio,endereco,matricula_sindico)
values
('Sirius','Cormorao 143',2);
select*from condominio;

# Insira os dados de 5 (cinco) Apartamentos para cada Condomínio com uma cobertura em cada um.
describe apartamento;
insert into apartamento
(numero_ap,tipo,codigo_condominio)
values
('A-100','Padrão',1);
insert into apartamento
(numero_ap,tipo,codigo_condominio)
values
('A-101','2-Padrão',1);
insert into apartamento
(numero_ap,tipo,codigo_condominio)
values
('B-100','Cobertura,1);
insert into apartamento
(numero_ap,tipo,codigo_condominio)
values
('A-10','Padrão',2);
insert into apartamento
(numero_ap,tipo,codigo_condominio)
values
('B-40','Cobertura',2);
select*from apartamento;

# Insira os dados de Garagem sabendo-se que um dos Condomínios possui duas vagas por Apartamento, enquanto o outro só uma e que somente quem mora no Apartamento do tipo cobertura, possui vaga coberta.
describe garagem;
insert into garagem
(tipo,numero_ap)
values
('Padrão','A-100');
insert into garagem
(tipo, numero_ap)
values
('Padrão','A-101');
insert into garagem
(tipo,numero_ap)
values
('Coberta','B-100');
insert into garagem
(tipo,numero_ap)
values
('Padrão','A-10');
insert into garagem
(tipo,numero_ap)
values
('Padrão','A-10');
insert into garagem
(tipo,numero_ap)
values
('Coberta','B-40');
insert into garagem
(tipo,numero_ap)
values
('Coberta','B-40');
select*from garagem;

/*Insira os registros necessários para distribuir os Apartamentos entre os Proprietários, sabendo-se que:
a)	nenhum Proprietário pode ficar sem Apartamento, 
b)	um Proprietário pode possuir mais de um Apartamento e 
c)	um Apartamento por ter mais de um Proprietário. */

describe proprietario_apartamento;
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('A-10','123456-10');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('A-10','123456-11');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('A-10','123456-12');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('B-40','123456-11');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('B-40','123456-13');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('A-100','123456-14');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('A-100','123456-15');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('A-101','123456-16');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('A-101','123456-18');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('B-100','123456-17');
insert into proprietario_apartamento
(numero_ap,rg_proprietario)
values
('B-100','123456-19');
select*from proprietario_apartamento;
7)	Utilize o comando de alteração para simular a venda de pelo menos 2 (dois) Apartamentos, fazendo com que pelo um Proprietário fique sem apartamento.
update proprietario_apartamento
set rg_proprietario = '123456-14'
where prop_ap_id = 11;
8)	Utilize o comando de exclusão para excluir o registro do Proprietário que ficou sem Apartamento.
delete from proprietario
where rg_proprietario='123456-19';


