INSERT INTO enderecos (cep, rua, numero, complemento, bairro, cidade, estado)
	VALUES
		(83823208, 'dinamarca', 41, 'casa', 'nacoes', 'curitiba', 'paraná'),
        ('12345678', 'flores', '123', 'apto 4', 'centro', 'cidade a', 'estado x'),
		('98765432', 'avenida', '4567', 'verde', 'jardim feliz', 'cidade b', 'estado y'),
		('54321876', 'praça', '789', 'sala 10', 'novo', 'cidade c', 'estado z'),
		('13579246', 'alameda', '9876', 'bloco c', 'alegre', 'cidade d', 'estado w'),
		('86420001', 'estrada', '2345', 'chácara das rosas', 'bela vista', 'cidade e', 'estado v'),
		('24680135', 'travessa', '987', 'lote 5', 'primavera', 'cidade f', 'estado u'),
		('98765432', 'avenida', '1234', 'apartamento 22', 'centro', 'cidade g', 'estado t'),
		('78965432', 'águas claras', '555', 'casa azul', 'sol', 'cidade h', 'estado s'),
		('13579246', 'alameda', '3210', 'bloco d', 'flores', 'cidade i', 'estado r'),
		('54321876', 'esperança', '246', 'sala 7', 'novo', 'cidade j', 'estado q'),
		('12345678', 'pássaros', '135', 'casa 3', 'vila', 'cidade k', 'estado p'),
		('98765432', 'rosas', '9876', 'apartamento 18', 'centro', 'cidade l', 'estado o'),
		('54321876', 'sol', '543', 'sala 12', 'feliz', 'cidade m', 'estado n'),
		('13579246', 'flores', '7531', 'bloco a', 'árvores', 'cidade n', 'estado m'),
        ('86420001', 'montanhas', '357', 'chácara das flores', 'linda', 'cidade o', 'estado l');
SELECT * FROM enderecos;
INSERT INTO pessoas (nome, cpf, naturalidade, nome_mae, id_endereco_fk)
	VALUES
		('joao da silva', '12345678901', 'saopaulo', 'maria da silva', '1'),
		('ana souza', '23456789012', 'riodejaneiro', 'maria souza', '2'),
		('pedro ferreira', '34567890123', 'minasgerais', 'juliana ferreira', '3'),
		('laura rodrigues', '45678901234', 'bahia', 'andrea rodrigues', '4'),
		('marcos oliveira', '56789012345', 'pernambuco', 'lucia oliveira', '5'),
		('carla santos', '67890123456', 'ceara', 'ana santos', '6'),
		('paulo almeida', '78901234567', 'parana', 'patricia almeida', '7'),
		('juliana costa', '89012345678', 'santacatarina', 'lucia costa', '8'),
		('lucas pereira', '90123456789', 'riograndedosul', 'sandra pereira', '9'),
		('ana vieira', '01234567890', 'goias', 'maria vieira', '10'),
		('felipe martins', '54321678901', 'amapa', 'marta martins', '11'),
		('beatriz goncalves', '43216578901', 'roraima', 'lucia goncalves', '12'),
		('rafael rocha', '32165478901', 'tocantins', 'ana rocha', '13'),
		('carolina camargo', '21654378901', 'rondonia', 'juliana camargo', '14'),
		('gustavo lima', '16543278901', 'amapa', 'fernanda lima', '15'),
        ('mariana santana', '65432178901', 'espiritosanto', 'andrea santana', '16'),
		('rodrigo gomes', '54321789012', 'acre', 'maria gomes', '17'),
		('patricia lima', '43217890123', 'roraima', 'lucia lima', '18'),
		('eduardo rocha', '32178901234', 'para', 'ana rocha', '19'),
		('fernanda pereira', '21789012345', 'ceara', 'sandra pereira', '20'),
		('gabriel costa', '17890123456', 'amazonas', 'lucia costa', '21'),
		('sabrina almeida', '78901234567', 'parana', 'patricia almeida', '22'),
		('alexandre santos', '89012345678', 'saopaulo', 'maria santos', '23'),
		('natalia silva', '90123456789', 'riodejaneiro', 'maria silva', '24'),
		('bruno oliveira', '01234567890', 'minasgerais', 'juliana oliveira', '25'),
		('isabela souza', '43210987654', 'bahia', 'andrea souza', '26'),
		('thiago ferreira', '32109876543', 'pernambuco', 'juliana ferreira', '27'),
		('raquel rodrigues', '21098765432', 'ceara', 'andrea rodrigues', '28'),
		('lucas alves', '10987654321', 'santacatarina', 'lucia alves', '29');
SELECT * FROM pessoas;
INSERT INTO usuarios (senha, id_pessoa_fk) 
	VALUES
    (12345, '1'),
    (2345, '2'),
    (3421, '3'),
    (6784, '4'),
    (9087, '5'),
    (3452, '6'),
    (1213, '7'),
    (1989, '8'),
    (9891, '9'),
    (4340, '10');  
SELECT * FROM usuarios;
INSERT INTO funcionarios (matricula, funcao, id_pessoa_fk)
	VALUES 
    (1234, 'blibiotecario', '11'),
    (2345, 'recepção', '12'),
    (4321, 'limpeza', '13'),
    (1789, 'repositor', '14'),
    (1564, 'caixa', '15'),
    (3425, 'auxiliar administrativo', '16'),
    (4567, 'atendente', '17'),
    (3908, 'secretario', '18'),
    (8901, 'gerente', '19'),
    (5252, 'chefe', '20');

INSERT INTO autores (genero_escrita, quantidade_livros, id_pessoa_fk)
	VALUES
    ('ficção', '5', '21'),
    ('romance', '8', '22'),
    ('biografia', '1', '23'),
    ('suspense', '7', '24'),
    ('poema', '9', '25'),
    ('terror', '7', '26'),
    ('aventura', '3', '27');
    
    SELECT * FROM autores;

INSERT INTO livros (genero, numero_serie, numero_pagina, titulo, idioma, id_autor_fk)
    VALUES
    ('ficcao', '123456', '300', 'O Destino do Universo', 'portugues', '1'),
	('aventura', '234567', '420', 'A Busca pelo Tesouro Perdido', 'portugues', '2'),
	('romance', '345678', '250', 'Entre Dois Coracoes', 'portugues', '3'),
	('fantasia', '456789', '400', 'A Jornada do Herói', 'portugues', '4'),
	('terror', '567890', '180', 'A Mansao Assombrada', 'portugues', '5'),
	('historia', '678901', '320', 'A Era dos Reis', 'portugues', '6'),
	('familia', '789012', '280', 'A Vida em Harmonia', 'portugues', '7'),
	('distopia', '890123', '360', 'A Cidade das Sombras', 'portugues', '1'),
	('suspense', '901234', '290', 'O Enigma do Passado', 'portugues', '2'),
	('biografia', '012345', '500', 'Vida de um Visionario', 'portugues', '3'),
	('autoajuda', '123450', '220', 'Caminhos para a Felicidade', 'portugues', '4'),
	('scifi', '234501', '410', 'Exploradores do Espaco', 'portugues', '5'),
	('drama', '345012', '240', 'Lacos Inquebraveis', 'portugues', '6'),
	('comedia', '450123', '280', 'As Aventuras Hilarias', 'portugues', '7'),
	('misterio', '501234', '340', 'O Segredo do Velho Casarao', 'portugues', '1');
    
SELECT * FROM livros;
INSERT INTO emprestimos (id_usuario_fk, id_livro_fk)
	VALUES
    (1, 1),
    (2, 3),
    (3, 15),
    (4, 14),
    (5, 13),
    (6, 10),
    (7, 12),
    (8, 4),
    (9, 7),
    (10, 2);



