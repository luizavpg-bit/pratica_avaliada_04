CREATE DATABASE db_loja;
USE db_loja;

CREATE TABLE tb_categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
 
CREATE TABLE tb_produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);
 
INSERT INTO tb_categoria (nome) VALUES
('Informática'),
('Eletrodomésticos'),
('Móveis'),
('Vestuário'),
('Alimentos'),
('Brinquedos'),
('Livros'),
('Esportes'),
('Beleza'),
('Ferramentas');
 
INSERT INTO tb_produto (nome, preco, id_categoria) VALUES
('Headphone', 120.00, 1),
('Air Fryer', 2500.00, 2),
('Sofá', 1800.00, 3),
('Camiseta', 49.90, 4),
('Trento', 2.00, 5),
('Boneco do Fofão', 60.00, 6),
('Livro Código Limpo', 89.90, 7),
('Bola de Futebol', 75.00, 8),
('Perfume', 150.00, 9),
('Furadeira', 320.00, 10),
('Mouse', 65.00, 1);
 
-- Listar todos os produtos
SELECT * FROM tb_produto;
 
-- 5. Filtrar produtos por preço (exemplo: <= a 100)
SELECT nome, preco
FROM tb_produto
WHERE preco <= 100;
 
-- Atualizar o preço de um produto identificando-o por uma condição específica
UPDATE tb_produto
SET preco = 120.00
WHERE nome = 'Headphone';
 
-- Remover um produto pelo nome
DELETE FROM tb_produto
WHERE nome = 'Mouse';
 
-- 8. Consulta relacionando produto e categoria (aplicando JOIN)
SELECT
    p.nome AS Produto,
    p.preco AS Preco,
    c.nome AS Categoria
FROM tb_produto p
JOIN tb_categoria c ON p.id_categoria = c.id_categoria;
 