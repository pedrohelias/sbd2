USE aula1exer2;

INSERT INTO TELEFONE(ddd,numero) VALUES 
('061', '35634026'),
('081', '36941234'),
('062', '36401122');

INSERT INTO ENDERECO(uf,bairro,cidade, cep, endereco) VALUES 
('DF', 'bairro1', 'cidade1', '11111111', 'end1'),
('RJ', 'bairro2', 'cidade2', '22222222', 'end2'),
('GO', 'bairro3', 'cidade3', '33333333', 'end3');

INSERT INTO PESSOA(cpf,nome,senha) VALUES 
('0227045', 'Neymar Jr', '123456'),
('1224583', 'Vini Jr', '643123'),
('4598654', 'Raphinha', '555651'),
('4562523', 'Alisson', '444888' ),
('4986541', 'Thiago Silva', '321654'),
('4475963', 'Marquinhos', '998651');

INSERT INTO EMPREGADO(idTelefone, cpf) VALUES
('1', '0227045'),
('2', '1224583'),
('3', '4598654');

INSERT INTO GERENTE(formacaoEscolar, emailContato, cpf) VALUES 
('Pedagogia', 'fulano1@email.com', '4562523'),
('Educaçao Fisica', 'fulano2@email.com','4986541'),
('Economia', 'fulano3@email.com','4475963');

INSERT INTO PRODUTO(nome, preco) VALUES 
('Produto1', '10'),
('Produto2', '20'),
('Produto3', '30');

INSERT INTO VENDA(dataVenda, quantidade, preco, precoTotal, codigoProduto, matricula) VALUES 
('2020-10-11', '2','10', '20', '1', '1') ,
('2019-05-05', '1', '20', '20', '2','2'),
('2018-01-08', '5', '30', '150', '3', '3');