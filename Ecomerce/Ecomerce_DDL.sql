CREATE DATABASE db_Ecomerce;

USE db_Ecomerce;

CREATE TABLE tb_usuarios (	
		Id INT NOT NULL PRIMARY KEY,
		Nome VARCHAR(50) NOT NULL,
		Usuario VARCHAR(50) NOT NULL,
		Senha VARCHAR(100) NOT NULL,
		Documento VARCHAR(250) NOT NULL,
);

CREATE TABLE tb_produtos (	
		Id INT NOT NULL PRIMARY KEY,
		Produto VARCHAR (50) NOT NULL,
		Descricao VARCHAR (50) NOT NULL,
		Valor FLOAT NOT NULL,
		Estoque INT NOT NULL,
		Categoria VARCHAR(255) NOT NULL CHECK(Categoria IN('cat1', 'cat2')),
		Url_Imagem VARCHAR(100),

);

CREATE TABLE tb_compras(
		Id INT NOT NULL PRIMARY KEY IDENTITY,
		FK_usuario INT NOT NULL,
		FK_produto INT NOT NULL,
		Data DATE NOT NULL,
		FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios(Id),
		FOREIGN KEY (FK_Produto) REFERENCES tb_produtos(Id),
);		







		

