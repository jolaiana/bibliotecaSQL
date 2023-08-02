CREATE DATABASE Biblioteca_emprestimos;

USE Biblioteca_emprestimos;

CREATE TABLE `enderecos` (
  `id_endereco` INT PRIMARY KEY AUTO_INCREMENT,
  `cep` INT,
  `rua` varchar(20),
  `numero` INT,
  `complemento` varchar(20),
  `bairro` varchar(20),
  `cidade` varchar(30),
  `estado` varchar(20)
);

CREATE TABLE `pessoas` (
  `id_pessoa` INT PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(50),
  `cpf` BIGINT,
  `naturalidade` varchar(20),
  `nome_mae` varchar(50),
  `id_endereco_fk` INT,
  FOREIGN KEY (id_endereco_fk) REFERENCES enderecos (id_endereco)
);

CREATE TABLE `usuarios` (
  `id_usuario` INT PRIMARY KEY AUTO_INCREMENT,
  `senha` INT,
  `id_pessoa_fk` INT,
  FOREIGN KEY (id_pessoa_fk) REFERENCES pessoas (id_pessoa)
);

CREATE TABLE `funcionarios` (
  `id_funcionario` INT PRIMARY KEY AUTO_INCREMENT,
  `matricula` INT,
  `funcao` varchar (50),
  `id_pessoa_fk` INT,
  FOREIGN KEY (id_pessoa_fk) REFERENCES pessoas (id_pessoa)
);

CREATE TABLE `autores` (
  `id_autor` INT PRIMARY KEY AUTO_INCREMENT,
  `genero_escrita` varchar(10),
  `quantidade_livros` INT,
  `id_pessoa_fk` INT,
  FOREIGN KEY (id_pessoa_fk) REFERENCES pessoas (id_pessoa)
);

CREATE TABLE `livros` (
  `id_livro` INT PRIMARY KEY AUTO_INCREMENT,
  `genero` varchar(30),
  `numero_serie` INT,
  `numero_pagina` INT,
  `titulo` varchar(1000),
  `idioma` varchar(100),
  `id_autor_fk` INT,
  FOREIGN KEY (id_autor_fk) REFERENCES autores (id_autor)
);

CREATE TABLE `emprestimos` (
  `id_emprestimo` INT PRIMARY KEY AUTO_INCREMENT,
  `id_usuario_fk` INT,
  `id_livro_fk` INT,
  FOREIGN KEY (id_usuario_fk) REFERENCES usuarios (id_usuario),
  FOREIGN KEY (id_livro_fk) REFERENCES livros (id_livro)
);
