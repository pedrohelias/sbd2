-- --------  << aula1exer2 >>  ----------
-- 
--                     SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 05/11/2022
-- Autor(es) ..............: Pedro Helias Carlos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2
-- 
-- Ultimas Alteracoes
--   05/11/2022 => Criaçao do script fisico
-- 
-- PROJETO => 01 Base de Dados
--         => 07 Tabelas
--         
-- ---------------------------------------------------------


CREATE DATABASE IF NOT EXISTS aula1exer2;

USE aula1exer2;

CREATE TABLE TELEFONE(
	idTelefone INT NOT NULL AUTO_INCREMENT,
    ddd INT NOT NULL,
    numero INT NOT NULL, 
    
    CONSTRAINT TELEFONE_PK PRIMARY KEY (idTelefone),
    CONSTRAINT TELEFONE_UK UNIQUE (ddd, numero)
)ENGINE = InnoDB;


CREATE TABLE ENDERECO(
	idEndereco INT NOT NULL AUTO_INCREMENT,
    uf VARCHAR(2) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    cep INT NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    
	CONSTRAINT ENDERECO_PK PRIMARY KEY (idEndereco),
    CONSTRAINT ENDERECO_UK UNIQUE (uf, bairro, cidade, cep, endereco)
)ENGINE = InnoDB; 


CREATE TABLE PESSOA(
	cpf INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    senha INT NOT NULL,
    
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
)ENGINE = InnoDB;


CREATE TABLE EMPREGADO(
	matricula INT NOT NULL AUTO_INCREMENT,
    idTelefone INT NOT NULL,
    cpf INT NOT NULL,
    
	CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT EMPREGADO_TELEFONE_FK FOREIGN KEY (idTelefone) REFERENCES TELEFONE(idTelefone) ON DELETE RESTRICT ON UPDATE RESTRICT,
	CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpf) REFERENCES PESSOA(cpf) ON DELETE RESTRICT ON UPDATE RESTRICT
)ENGINE = InnoDB;


CREATE TABLE GERENTE(
	idGerente INT NOT NULL AUTO_INCREMENT,
    formacaoEscolar VARCHAR(100) NOT NULL,
    emailContato VARCHAR(100) NOT NULL,
    cpf INT NOT NULL,
    
    CONSTRAINT GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpf) REFERENCES PESSOA(cpf) ON DELETE RESTRICT ON UPDATE RESTRICT 

)ENGINE = InnoDB;

CREATE TABLE PRODUTO(
	codigoProduto INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco INT NOT NULL,
    
    CONSTRAINT PRODUTO_PK PRIMARY KEY (codigoProduto)

)ENGINE = InnoDB;


CREATE TABLE VENDA(
	idVenda INT NOT NULL AUTO_INCREMENT,
    dataVenda DATE NOT NULL,
    quantidade INT NOT NULL,
    preco INT NOT NULL,
    precoTotal INT NOT NULL,
    codigoProduto INT NOT NULL,
	matricula INT NOT NULL,
    
	CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_PRODUTO_FK FOREIGN KEY (codigoProduto) REFERENCES PRODUTO(codigoProduto) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO(matricula) ON DELETE RESTRICT ON UPDATE RESTRICT

)ENGINE = InnoDB; 
