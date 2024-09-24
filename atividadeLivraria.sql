
CREATE DATABASE Livraria;


USE Livraria;


CREATE TABLE Cliente (
    ID_Cliente INT AUTO_INCREMENT,
    nome VARCHAR(45), 
    email VARCHAR(45),
    telefone VARCHAR(45),
    rua VARCHAR(45),
    cidade VARCHAR(45),
    bairro VARCHAR(45),
    estado VARCHAR(45),
    PRIMARY KEY (ID_Cliente)
);


CREATE TABLE Pedido (
    ID_Pedido INT AUTO_INCREMENT,
    valor_pedido DECIMAL(9,2),
    cliente_cod_cliente INT,
    PRIMARY KEY (ID_Pedido),
    FOREIGN KEY (cliente_cod_cliente) REFERENCES Cliente(ID_Cliente)
);


CREATE TABLE Vendedor (
    ID_Vendedor INT AUTO_INCREMENT,
    nome VARCHAR(45), 
    telefone VARCHAR(45),
    email VARCHAR(45),
    PRIMARY KEY (ID_Vendedor)
);


CREATE TABLE Livro (
    ID_Livro INT AUTO_INCREMENT,
    valor DECIMAL(9,2),  
    titulo VARCHAR(45),
    nome VARCHAR(45),
    autor VARCHAR(45),
    PRIMARY KEY (ID_Livro)
);


CREATE TABLE Livro_pedido (
    ID_Livro_pedido INT AUTO_INCREMENT,
    valor_pedido DECIMAL(9,2),
    qtd_pedido INT,
    livro_cod_livro INT,
    pedido_cod_pedido INT,
    PRIMARY KEY (ID_Livro_pedido),
    FOREIGN KEY (livro_cod_livro) REFERENCES Livro(ID_Livro),
    FOREIGN KEY (pedido_cod_pedido) REFERENCES Pedido(ID_Pedido)
);


CREATE TABLE Estoque (
    ID_Estoque INT AUTO_INCREMENT,
    qtd_estoque INT,
    livro_cod_livro INT,
    PRIMARY KEY (ID_Estoque),
    FOREIGN KEY (livro_cod_livro) REFERENCES Livro(ID_Livro)
);


INSERT INTO Cliente (nome, email, telefone, rua, cidade, bairro, estado) VALUES
('Ana Maria Costa', 'ana.maria@example.com', '(11) 98765-4321', 'Rua das Flores', 'São Paulo', 'Centro', 'SP'),
('Bruno Almeida', 'bruno.almeida@example.com', '(21) 97654-3210', 'Avenida das Palmeiras', 'Rio de Janeiro', 'Bairro A', 'RJ'),
('Carla Souza', 'carla.souza@example.com', '(31) 96543-2109', 'Praça dos Jacarandás', 'Belo Horizonte', 'Zona Leste', 'MG'),
('Daniel Santos', 'daniel.santos@example.com', '(41) 95432-1098', 'Rua das Orquídeas', 'Curitiba', 'Jardim B', 'PR'),
('Eliane Oliveira', 'eliane.oliveira@example.com', '(51) 94321-0987', 'Avenida dos Lírios', 'Porto Alegre', 'Vila C', 'RS'),
('Felipe Pereira', 'felipe.pereira@example.com', '(61) 93214-0876', 'Rua dos Pinhais', 'Brasília', 'Centro Norte', 'DF'),
('Gabriela Lima', 'gabriela.lima@example.com', '(71) 92143-0765', 'Avenida das Rosas', 'Salvador', 'Bairro D', 'BA'),
('Henrique Silva', 'henrique.silva@example.com', '(81) 91032-0654', 'Praça dos Sabiás', 'Recife', 'Zona Sul', 'PE'),
('Isabela Martins', 'isabela.martins@example.com', '(91) 90321-0543', 'Rua dos Manacás', 'Belém', 'Jardim E', 'PA'),
('João Pedro Costa', 'joao.pedro@example.com', '(11) 89987-0432', 'Avenida dos Girassóis', 'São Paulo', 'Bairro F', 'SP'),
('Juliana Rocha', 'juliana.rocha@example.com', '(21) 88776-0321', 'Rua das Begônias', 'Rio de Janeiro', 'Centro Histórico', 'RJ'),
('Kevin Dias', 'kevin.dias@example.com', '(31) 87654-3210', 'Praça dos Ipês', 'Belo Horizonte', 'Zona Norte', 'MG'),
('Larissa Campos', 'larissa.campos@example.com', '(41) 86543-2109', 'Rua das Azaléias', 'Curitiba', 'Vila G', 'PR'),
('Marcelo Ferreira', 'marcelo.ferreira@example.com', '(51) 85432-1098', 'Avenida dos Jacarés', 'Porto Alegre', 'Bairro H', 'RS'),
('Natália Ribeiro', 'natalia.ribeiro@example.com', '(61) 84321-0987', 'Rua dos Anjos', 'Brasília', 'Jardim I', 'DF'),
('Otávio Martins', 'otavio.martins@example.com', '(71) 83214-0876', 'Praça dos Lírios', 'Salvador', 'Centro Oeste', 'BA'),
('Patrícia Almeida', 'patricia.almeida@example.com', '(81) 82143-0765', 'Avenida das Acácias', 'Recife', 'Bairro J', 'PE'),
('Quintino Barros', 'quintino.barros@example.com', '(91) 81032-0654', 'Rua dos Pinheiros', 'Belém', 'Zona Leste', 'PA'),
('Renata Silva', 'renata.silva@example.com', '(11) 79987-0432', 'Praça dos Pequis', 'São Paulo', 'Jardim K', 'SP'),
('Samuel Costa', 'samuel.costa@example.com', '(21) 78876-0321', 'Avenida das Hortênsias', 'Rio de Janeiro', 'Centro Sul', 'RJ'),
('Tatiane Souza', 'tatiane.souza@example.com', '(31) 77765-0210', 'Rua dos Magnólias', 'Belo Horizonte', 'Zona Oeste', 'MG'),
('Ulysses Lima', 'ulysses.lima@example.com', '(41) 76654-2109', 'Praça dos Jacarandás', 'Curitiba', 'Bairro L', 'PR'),
('Vanessa Rocha', 'vanessa.rocha@example.com', '(51) 75543-1098', 'Rua dos Hibiscos', 'Porto Alegre', 'Jardim M', 'RS'),
('Wagner Pereira', 'wagner.pereira@example.com', '(61) 74432-0987', 'Avenida dos Cactos', 'Brasília', 'Vila N', 'DF'),
('Ximena Campos', 'ximena.campos@example.com', '(71) 73321-0876', 'Rua das Violetas', 'Salvador', 'Centro Leste', 'BA'),
('Yuri Almeida', 'yuri.almeida@example.com', '(81) 72143-0765', 'Praça das Cerejeiras', 'Recife', 'Bairro O', 'PE');

SELECT DISTINCT cidade 
FROM Cliente;

SELECT nome, cidade 
FROM Cliente 
WHERE cidade = 'São Paulo';

SELECT TOP  ID_Pedido, valor_pedido 
FROM Pedido 
ORDER BY valor_pedido DESC;
