CREATE DATABASE db_RedeSocial;

USE db_RedeSocial;

CREATE TABLE tb_Usuarios(
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Foto VARCHAR(100) NULL
);

CREATE TABLE tb_Grupos(
	Id INT NOT NULL PRIMARY KEY,
	Grupo VARCHAR(45) NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	Imagem VARCHAR(100) NULL,
	FK_Criador INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_Usuarios(Id)
);

CREATE TABLE tb_Postagens(
	Id INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(50) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	Imagem VARCHAR(100) NULL,
	Data_postagem DATE NOT NULL,
	FK_Criador INT NOT NULL,
	FK_Grupo INT NOT NULL
	FOREIGN KEY (FK_Criador) REFERENCES tb_Usuarios(Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_Grupos(Id)
);

CREATE TABLE tb_Inscritos(
	FK_Usuarios INT NOT NULL,
	FK_Grupo INT NOT NULL,
	Datas DATE NOT NULL,
	FOREIGN KEY (FK_Usuarios) REFERENCES tb_Usuarios(Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_Grupos(Id)
);
