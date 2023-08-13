# Projeto Individual Módulo 3
##
Projeto destinado ao curso Códigos do Amanhã, como atividade avaliativa individual do módulo 3. Este é um projeto de sistema de gerenciamento de empréstimo de livros para uma biblioteca, implementado em SQL. O sistema permite o controle de pessoas, endereços, usuários, funcionários, autores, livros e empréstimos.
##
# Funcionalidades Principais:
✔️ Registro e gerenciamento de pessoas, incluindo informações pessoais e endereço. <br>
✔️ Criação e gestão de usuários para acesso ao sistema. <br>
✔️ Cadastro e administração de funcionários com suas respectivas funções. <br>
✔️ Acompanhamento de autores e suas obras, incluindo detalhes sobre os livros. <br>
✔️ Manutenção do catálogo de livros, incluindo gênero, título, idioma e informações do autor. <br>
✔️ Registro de empréstimos de livros por usuários. <br>
##
📍Este projeto SQL de biblioteca de empréstimo de livros é uma base para desenvolver um sistema completo de gerenciamento de bibliotecas. Dependendo das suas necessidades, você pode considerar a criação de uma interface de usuário, implementação de autenticação, validações de dados mais rigorosas e outros recursos avançados.📍
##
Abaixo estão as tabelas criadas para modelar o banco de dados e suas relações:
## Tabelas
- enderecos 
Armazena informações sobre endereços.
- pessoas
Armazena informações sobre pessoas (usuários, funcionários e autores).
- usuarios
Armazena informações sobre os usuários.
- funcionarios
Armazena informações sobre os funcionários.
- autores
Armazena informações sobre os autores.
- livros
Armazena informações sobre os livros.
- emprestimos
Armazena informações sobre os empréstimos de livros.
##
# Como utilizar?
## 1. **Clone o repositório**
## 2.Importe o Banco de Dados:
Use um cliente MySQL (como MySQL Workbench) ou um utilitário de linha de comando para importar o arquivo SQL biblioteca.sql no seu servidor de banco de dados.
## 3.Explore as Tabelas:
Agora que o banco de dados foi criado, você pode explorar as tabelas e seus relacionamentos. Você pode usar consultas SQL para selecionar, inserir, atualizar ou excluir registros.
# Exemplos de Consultas
## Selecionar todos os livros:
SELECT * FROM livros;
## Inserir um novo usuário:
INSERT INTO usuarios (senha, id_pessoa_fk) VALUES (123456, 1);
## Atualizar informações de um autor:
UPDATE autores SET quantidade_livros = 10 WHERE id_autor = 1;

