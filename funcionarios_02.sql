-- 1. Criação do banco de dados
CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
 
CREATE TABLE tb_funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES tb_departamento(id_departamento)
);
 
INSERT INTO tb_departamento (nome) VALUES
('Tecnologia'),
('Recursos Humanos'),
('Financeiro'),
('Marketing'),
('Vendas'),
('Jurídico'),
('Logística'),
('Atendimento'),
('Diretoria'),
('Produção');
 
INSERT INTO tb_funcionario (nome, salario, id_departamento) VALUES
('Euripedes', 3500.00, 1),
('Ananias', 4200.00, 2),
('Janaina', 2800.00, 3),
('Shakira', 5100.00, 4),
('Renato', 3200.00, 5),
('Sofia', 6000.00, 6),
('Tulio', 2950.00, 7),
('Vanessa', 3100.00, 8),
('Rafal', 9500.00, 9),
('Robson', 3700.00, 10),
('Norton', 2700.00, 1);
 
-- Listar todos os funcionários
SELECT * FROM tb_funcionario;
 
--  Filtrar funcionários com salário maior que um valor específico (exemplo > R$ 4000.00)
SELECT nome, salario
FROM tb_funcionario
WHERE salario > 4000;
 
--  Atualizar o salário de um funcionário buscando por uma condição específica
UPDATE tb_funcionario
SET salario = 3000.00
WHERE nome = 'Norton';
 
--  Remover um funcionário identificando pelo nome
DELETE FROM tb_funcionario
WHERE nome = 'Shakira';
 
--  Consulta relacionando funcionário e departamento (JOIN)
SELECT
    f.nome AS Funcionario,
    f.salario AS Salario,
    d.nome AS Departamento
FROM tb_funcionario f
JOIN tb_departamento d ON f.id_departamento = d.id_departamento;
