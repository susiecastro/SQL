
create database imobiliaria_joaodebarro;
use imobiliaria_joaodebarro;

CREATE TABLE condominio (
  codigo int NOT NULL AUTO_INCREMENT,
  condominio varchar(80) NOT NULL,
  endereco varchar(120) NOT NULL,
  PRIMARY KEY (codigo)
);

CREATE TABLE proprietario (
  RG varchar(15) NOT NULL,
  Nome varchar(80) NOT NULL,
  email varchar(80) NOT NULL,
  Telefone int (30) DEFAULT NULL,
  PRIMARY KEY (RG)
);

CREATE TABLE apartamento (
  codigo_apartamento int NOT NULL,
  numero int NOT NULL,
  tipo varchar(10) DEFAULT NULL,
  codigo_condominio int DEFAULT NULL,
  RG_proprietario varchar(15) DEFAULT NULL,
  PRIMARY KEY (codigo_apartamento),
  KEY codigo_idx (codigo_condominio),
  KEY rg_idx (RG_proprietario),
  CONSTRAINT codigo FOREIGN KEY (codigo_condominio) REFERENCES condominio (codigo),
  CONSTRAINT rg FOREIGN KEY (RG_proprietario) REFERENCES proprietario (RG)
);

CREATE TABLE garagem (
  codigo_garagem int NOT NULL,
  numero int NOT NULL,
  codigo_apartamento int NOT NULL,
  PRIMARY KEY (codigo_garagem),
  UNIQUE KEY codigo_apartamento_UNIQUE (codigo_apartamento),
  KEY codigo_apartamento_idx (codigo_apartamento),
  CONSTRAINT codigo_apartamento FOREIGN KEY (codigo_apartamento) REFERENCES apartamento (codigo_apartamento)
);

CREATE TABLE sindico (
  matricula int NOT NULL,
  sindico varchar(80) NOT NULL,
  endereco varchar(80) NOT NULL,
  telefone varchar(80) NOT NULL,
  codigo_condominnio int NOT NULL,
  PRIMARY KEY (matricula),
  UNIQUE KEY codigo_condominnio_UNIQUE (codigo_condominnio),
  KEY codigo_condominio_idx (codigo_condominnio)
);
