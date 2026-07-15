CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL
);
CREATE TABLE tb_aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    id_curso INT,
    FOREIGN KEY (id_curso)
        REFERENCES tb_curso(id_curso)
);
INSERT INTO tb_curso (nome, carga_horaria) VALUES
('Java', 400),
('Python', 350),
('Java', 300),
('C#', 380),
('SQL', 200),
('Front-end', 250),
('Back-end', 320),
('Data Science', 400),
('Mobile', 300),
('Cloud', 280);
INSERT INTO tb_aluno (nome, idade, id_curso) VALUES
('Luiza', 33, 3),
('Glauber', 17, 2),
('Carla', 22, 3),
('Tobias', 19, 1),
('Lurdes', 16, 4),
('Arrturr', 25, 5),
('Gabriela', 21, 6),
('Hugo', 18, 7),
('Isabela', 15, 8),
('Mauro', 23, 9),
('Karina', 20, 10),
('Priscila', 17, 2);
-- Todos os registros
SELECT * FROM tb_curso;
SELECT * FROM tb_aluno;
-- Filtro alunos maiores de idade
SELECT a.nome, a.idade, c.nome AS curso
FROM tb_aluno a
JOIN tb_curso c ON a.id_curso = c.id_curso
WHERE a.idade >= 18;
-- Atualiza idade do aluno de acordo com o nome
UPDATE tb_aluno
SET idade = 33
WHERE nome = 'Luiza';
-- deletar aluno
DELETE FROM tb_aluno
WHERE nome = 'Tobias';
-- Buscar aluno e curso
SELECT
    a.nome AS Aluno,
    a.idade AS Idade,
    c.nome AS Curso,
    c.carga_horaria AS Carga_Horaria
FROM tb_aluno a
JOIN tb_curso c ON a.id_curso = c.id_curso;
