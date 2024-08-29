create database Livraria;

CREATE DATABASE Livraria;

create table Cliente (
ID_Cliente int(8) AUTO_INCREMENT,
nome varchar(45), 
email varchar(45),
telefone varchar(45),
rua varchar(45),
cidade varchar(45),
bairro varchar(45),
estado varchar(45),
PRIMARY KEY (ID_Cliente)
);

create table Pedido (
compra float(9), 
valor_pedido decimal(9),
cliente_cod_cliente int(9),
PRIMARY KEY (ID_Cliente),
FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

create table Vendedor (
nome  varchar(45), 
telefone varchar(45),
email varchar(45)
);

create table Livro_pedido (
valor_pedido decimal,  
qtd_pedido int(12),
livro_cod_livro int(12),
pedido_cod_pedido int(12),
PRIMARY KEY (ID_Livro_pedido),
FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro),
FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido)
);

create table Livro (
valor decimal,  
titulo varchar(45),
nome varchar(45),
autor varchar(45)
);

create table Estoque (
qtd_estoque int,  
livro_cod_livro int,
PRIMARY KEY (ID_Estoque),
FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro)
);



