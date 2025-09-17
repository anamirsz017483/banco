CREATE TABLE **Clientes** (

&nbsp;   ID\_Cliente INT AUTO\_INCREMENT PRIMARY KEY,

&nbsp;   Nome VARCHAR(100),

&nbsp;   Email VARCHAR(100),

&nbsp;   Senha VARCHAR(100),

&nbsp;   CPF VARCHAR(20),

&nbsp;   Endereco VARCHAR(255),

&nbsp;   Cidade VARCHAR(50),

&nbsp;   Estado VARCHAR(50),

&nbsp;   CEP VARCHAR(10),

&nbsp;   DataCadastro DATETIME

);



INSERT INTO **Clientes** (Nome, Email, Senha, CPF, Endereco, Cidade, Estado, CEP, DataCadastro)



VALUES



('Ana Rosa', 'anamiranda@gmail.com', 'senha1', '111.222.333-44', 'Rua A, 123', 'São Paulo', 'SP', '01111-111', NOW()),



('Eduardo Henrique', 'eduhenrique@gmail.com', 'senha2', '111.222.333-45', 'Rua B, 456', 'Rio de Janeiro', 'RJ', '02222-112', NOW()),



('Carlos Almeida', 'carlos.almeida@gmail.com', 'senha3', '111.222.333-46', 'Rua C, 789', 'Belo Horizonte', 'MG', '03333-113', NOW()),



('Diana cruz', 'dianacruz@gmail.com', 'senha4', '111.222.333-47', 'Rua D, 101', 'Curitiba', 'PR', '04444-114', NOW()),



('Jairo antonio', 'Jairoantonio@gmail.com', 'senha5', '111.222.333-48', 'Rua E, 202', 'Fortaleza', 'CE', '05555-115', NOW()),



('Rita de cassia', 'ritacassia@gmail.com', 'senha6', '111.222.333-49', 'Rua F, 303', 'Salvador', 'BA', '06666-116', NOW()),



('Gustavo mineiro', 'gustavomineiro@mail.com', 'senha7', '111.222.333-50', 'Rua G, 404', 'Recife', 'PE', '07777-117', NOW()),



('Helena Martins', 'helena.martins@gmail.com', 'senha8', '111.222.333-51', 'Rua H, 505', 'Porto Alegre', 'RS', '08888-118', NOW()),



('Pietro cassio', 'pietrocassio@gmail.com', 'senha9', '111.222.333-52', Rua I, 606', 'Manaus', 'AM', '09999-119', NOW()),



('Davi', 'davi@gmail.com', 'senha10', '111.222.333-53', 'Rua J, 707', 'Goiânia', 'GO', '1000-120', NOW()),



CREATE TABLE **Produtos** (

&nbsp;   ID\_Produto INT AUTO\_INCREMENT PRIMARY KEY,

&nbsp;   Nome VARCHAR(100),

&nbsp;   Descricao TEXT,

&nbsp;   Preco DOUBLE,

&nbsp;   SKU VARCHAR(50),

&nbsp;   Estoque INT,

&nbsp;   DataCriacao DATETIME

);



INSERT INTO **Produtos** (Nome, Descricao, Preco, SKU, Estoque, DataCriacao)

VALUES

('Camiseta Básica', 'Camiseta de algodão de alta qualidade', 10.00, 'SKU1', 100, NOW()),

('Tênis Esportivo', 'Tênis confortável e durável para esportes', 15.00, 'SKU2', 150, NOW()),

('Relógio Digital', 'Relógio digital com cronômetro e alarme', 20.00, 'SKU3', 200, NOW()),

('Mochila de Couro', 'Mochila de couro legítimo com vários compartimentos', 25.00, 'SKU4', 50, NOW()),

('Caderno Universitário', 'Caderno espiral com 200 folhas', 30.00, 'SKU5', 10, NOW()),

('Smartphone X200', 'Smartphone com tela Full HD e 64GB de armazenamento', 35.00, 'SKU6', 300, NOW()),

('Fones de Ouvido Bluetooth', 'Fones de ouvido sem fio com cancelamento de ruído', 40.00, 'SKU7', 120, NOW()),

('Cadeira Gamer', 'Cadeira ergonômica para gamers', 45.00, 'SKU8', 80, NOW()),

('Notebook Ultrafino', 'Notebook com processador i7 e 16GB de RAM', 50.00, 'SKU9', 60, NOW()),

('Câmera Fotográfica Profissional', 'Câmera DSLR com lente de 50mm', 55.00, 'SKU10', 30, NOW());





CREATE TABLE **Pedidos** (

&nbsp;   ID\_Pedido INT AUTO\_INCREMENT PRIMARY KEY,

&nbsp;   ID\_Cliente INT,

&nbsp;   DataPedido DATETIME,

&nbsp;   Status VARCHAR(50),

&nbsp;   ValorTotal DOUBLE,

&nbsp;   EnderecoEntrega VARCHAR(255),

&nbsp;   FOREIGN KEY (ID\_Cliente) REFERENCES Clientes(ID\_Cliente)

);



INSERT INTO `pedidos` (`ID\_Pedido`, `ID\_Cliente`, `DataPedido`, `Status`, `ValorTotal`, `EnderecoEntrega`) VALUES

(1, 1, '2025-09-17 10:17:57', 'no caminho', 100, 'Endereco de Entrega 1'),

(2, 2, '2025-09-17 20:40:23', 'no caminho', 150, 'Endereco de Entrega 2'),

(3, 3, '2025-09-17 08:33:37', 'entregue', 200, 'Endereco de Entrega 3'),

(4, 4, '2025-09-17 13:40:50', 'entregue', 250, 'Endereco de Entrega 4'),

(5, 5, '2025-09-17 12:30:54', 'recusado', 300, 'Endereco de Entrega 5'),

(6, 6, '2025-09-17 12:00:45', 'no caminho', 350, 'Endereco de Entrega 6'),

(7, 7, '2025-09-17 06:05:09', 'entregue', 400, 'Endereco de Entrega 7'),

(8, 8, '2025-09-17 15:30:00', 'entregue', 450, 'Endereco de Entrega 8'),

(9, 9, '2025-09-17 09:30:12', 'no caminho', 500, 'Endereco de Entrega 9'),

(10, 10, '2025-09-17 10:40:57', 'entregue', 550, 'Endereco de Entrega 10');







CREATE TABLE **ItensPedido** (

&nbsp;   ID\_ItemPedido INT AUTO\_INCREMENT PRIMARY KEY,

&nbsp;   ID\_Pedido INT,

&nbsp;   ID\_Produto INT,

&nbsp;   Quantidade INT,

&nbsp;   PrecoUnitario DOUBLE,

&nbsp;   FOREIGN KEY (ID\_Pedido) REFERENCES Pedidos(ID\_Pedido),

&nbsp;   FOREIGN KEY (ID\_Produto) REFERENCES Produtos(ID\_Produto)

);



INSERT INTO **ItensPedido** (ID\_Pedido, ID\_Produto, Quantidade, PrecoUnitario)

VALUES

(1, 1, 2, 10.00), (1, 2, 1, 15.00), (1, 3, 3, 20.00),

(2, 4, 1, 25.00), (2, 5, 2, 30.00), (2, 6, 1, 35.00),

(3, 7, 4, 40.00), (3, 8, 2, 45.00), (3, 9, 1, 50.00),

(4, 10, 5, 55.00), (4, 1, 3, 10.00), (4, 2, 2, 15.00),

-- Add 7 more for each order, continuing similarly.

(10, 9, 2, 50.00), (10, 8, 1, 45.00), (10, 7, 2, 40.00);













