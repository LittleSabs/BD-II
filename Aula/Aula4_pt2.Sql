create database pedidos;
use pedidos;
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco DECIMAL(10,2)
);
CREATE TABLE Produtos_Pedidos (
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto) -- Adicionada a conexão com Produtos
);
-- Dados da tabela Clientes
INSERT INTO Clientes (id_cliente, nome, email) VALUES
(1, 'João Silva', 'joao.silva@email.com'),
(2, 'Maria Oliveira', 'maria.oliveira@email.com'),
(3, 'Carlos Santos', 'carlos.santos@email.com');

-- Dados da tabela Pedidos
INSERT INTO Pedidos (id_pedido, id_cliente, data_pedido) VALUES
(101, 1, '2025-01-15'),
(102, 2, '2025-01-16'),
(103, 1, '2025-01-17');

-- Dados da tabela Produtos
INSERT INTO Produtos (id_produto, nome_produto, preco) VALUES
(1001, 'Notebook', 3500.00),
(1002, 'Smartphone', 2000.00),
(1003, 'Mouse', 150.00);

-- Dados da tabela Produtos_Pedidos
INSERT INTO Produtos_Pedidos (id_pedido, id_produto, quantidade) VALUES
(101, 1001, 1),
(101, 1003, 2),
(102, 1002, 1),
(103, 1003, 1);
SELECT 
    c.nome AS Nome_Cliente,
    p.nome_produto AS Produto_Comprado,
    pp.quantidade AS Quantidade,
    (p.preco * pp.quantidade) AS Valor_Total
FROM 
    Clientes c
INNER JOIN 
    Pedidos pd ON c.id_cliente = pd.id_cliente
INNER JOIN 
    Produtos_Pedidos pp ON pd.id_pedido = pp.id_pedido
INNER JOIN 
    Produtos p ON pp.id_produto = p.id_produto;