CREATE DATABASE db_classificado;

USE db_classificado;

CREATE TABLE tb_Usuarios(
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Pessoa VARCHAR(255) NOT NULL CHECK(Pessoa IN('FIS','JUR')),
	Imagem VARCHAR(100) NULL
);

CREATE TABLE tb_Anuncios(
	Id INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(45) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	Contato VARCHAR(100) NOT NULL,
	Imagem VARCHAR(100) NULL,
	Datas DATE NOT NULL,
	FK_Usuario INT NOT NULL
	FOREIGN KEY (FK_Usuario) REFERENCES tb_Usuarios(Id)
);
