//Tabela Filial
mysql> create table filial(
    -> codigo_filial int(4) auto_increment,
    -> nome_filial varchar(30),
    -> logadouro varchar(40),
    -> numero int(6),
    -> bairro varchar (30),
    -> cidade varchar (40),
    -> uf varchar(2),
    -> telefones varchar (20),
    -> constraint pk_filial primary key(codigo_filial)
    -> );
Query OK, 0 rows affected, 2 warnings (0.62 sec)

// Tabela Fabricante

mysql> create table fabricante(
    -> codigo_fabricante int(4) auto_increment,
    -> nome varchar (30),
    -> constraint pk_fabricante primary key (codigo_fabricante)
    -> );
Query OK, 0 rows affected, 1 warning (0.86 sec)

//Tabela Veículos
mysql> Create table veiculo (
    -> placa varchar(7) not null,
    -> ano varchar(4) not null,
    -> modelo varchar (20) not null,
    -> combustível varchar (15) not null,
    -> chassi varchar (17) not null,
    -> cor varchar(20) not null,
    -> codigo_filial int(4),
    -> codigo_fabricante int(4),
    -> constraint pk_veiculo primary key (placa),
    -> constraint fk_codigo_fabricante foreign key (codigo_fabricante) references fabricante (codigo_fabricante),
    -> constraint fk_codigo_filial foreign key (codigo_filial) references filial (codigo_filial)
    -> );
Query OK, 0 rows affected, 2 warnings (1.01 sec)
