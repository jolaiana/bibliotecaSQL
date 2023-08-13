CREATE DATABASE Biblioteca_emprestimos;
-- Tabela que armazena informações sobre endereços.
USE Biblioteca_emprestimos;

CREATE TABLE `enderecos` (
  `id_endereco` INT PRIMARY KEY AUTO_INCREMENT, -- ID único do endereço.
  `cep` INT, -- CEP do endereço.
  `rua` varchar(20), -- Nome da rua.
  `numero` INT, -- Número da residência.
  `complemento` varchar(20), -- Complemento do endereço.
  `bairro` varchar(20), -- Bairro do endereço.
  `cidade` varchar(30), -- Cidade do endereço.
  `estado` varchar(20) -- Estado do endereço.
);
-- Tabela que armazena informações sobre pessoas.
CREATE TABLE `pessoas` (
  `id_pessoa` INT PRIMARY KEY AUTO_INCREMENT, -- ID único da pessoa
  `nome` varchar(50), -- Nome da pessoa.
  `cpf` BIGINT, -- CPF da pessoa.
  `naturalidade` varchar(20), -- Naturalidade da pessoa.
  `nome_mae` varchar(50), -- Nome da mãe da pessoa.
  `id_endereco_fk` INT, -- Chave estrangeira referenciando endereços.
  FOREIGN KEY (id_endereco_fk) REFERENCES enderecos (id_endereco)
);
-- Tabela que armazena informações sobre usuários.
CREATE TABLE `usuarios` (
  `id_usuario` INT PRIMARY KEY AUTO_INCREMENT, -- ID único do usuário.
  `senha` INT, -- Senha do usuário (necessita de hashing)
  `id_pessoa_fk` INT, -- Chave estrangeira referenciando pessoas.
  FOREIGN KEY (id_pessoa_fk) REFERENCES pessoas (id_pessoa)
);
-- Tabela que armazena informações sobre funcionários.
CREATE TABLE `funcionarios` (
  `id_funcionario` INT PRIMARY KEY AUTO_INCREMENT, -- ID único do funcionário.
  `matricula` INT, -- Matrícula do funcionário.
  `funcao` varchar (50), -- Função do funcionário.
  `id_pessoa_fk` INT, -- Chave estrangeira referenciando pessoas.
  FOREIGN KEY (id_pessoa_fk) REFERENCES pessoas (id_pessoa)
);
-- Tabela que armazena informações sobre autores.
CREATE TABLE `autores` (
  `id_autor` INT PRIMARY KEY AUTO_INCREMENT, -- ID único do autor.
  `genero_escrita` varchar(10), -- Gênero de escrita do autor.
  `quantidade_livros` INT, -- Quantidade de livros escritos pelo autor.
  `id_pessoa_fk` INT, -- Chave estrangeira referenciando pessoas.
  FOREIGN KEY (id_pessoa_fk) REFERENCES pessoas (id_pessoa)
);
-- Tabela que armazena informações sobre livros.
CREATE TABLE `livros` (
  `id_livro` INT PRIMARY KEY AUTO_INCREMENT, -- ID único do livro.
  `genero` varchar(30), -- Gênero do livro.
  `numero_serie` INT, -- Número de série do livro.
  `numero_pagina` INT, -- Número de páginas do livro.
  `titulo` varchar(1000), -- Título do livro.
  `idioma` varchar(100), -- Idioma do livro.
  `id_autor_fk` INT, -- Chave estrangeira referenciando autores.
  FOREIGN KEY (id_autor_fk) REFERENCES autores (id_autor)
);
-- Tabela que armazena informações sobre empréstimos de livros.
CREATE TABLE `emprestimos` (
  `id_emprestimo` INT PRIMARY KEY AUTO_INCREMENT, -- ID único do empréstimo.
  `id_usuario_fk` INT, -- Chave estrangeira referenciando usuários.
  `id_livro_fk` INT, -- Chave estrangeira referenciando livros.
  FOREIGN KEY (id_usuario_fk) REFERENCES usuarios (id_usuario),
  FOREIGN KEY (id_livro_fk) REFERENCES livros (id_livro)
);
