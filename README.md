# Atividade Prática – Dev. Full Stack Jr.
### BD – MySQL: Criação, Manipulação e Consulta de Dados

Este repositório contém a resolução da atividade prática de banco de dados MySQL, proposta pela **Generation Brasil**, cobrindo criação de bancos, tabelas, inserção, consulta, atualização, remoção e relacionamento entre tabelas.

## 🎯 Habilidades trabalhadas

- Criação de banco de dados
- Criação de tabelas
- Inserção de registros
- Consulta de registros
- Atualização de registros
- Remoção de registros
- Filtragem de dados
- Relacionamento entre tabelas (JOIN)

## 🗂️ Estrutura do projeto

```
├── atividade4.sql   # Script único com os 3 exercícios
├── prints/          # Capturas de tela das execuções (adicione as suas aqui)
└── README.md
```

## 📚 Exercícios

### Exercício 1 – Gestão de Cursos e Alunos
Banco `db_escola` com as tabelas `tb_curso` e `tb_aluno`, relacionadas por `id_curso`.
Inclui listagem geral, filtro de alunos maiores de idade, atualização e remoção por condição, e um `JOIN` retornando aluno + curso.

### Exercício 2 – Sistema de Funcionários e Departamentos
Banco `db_empresa` com as tabelas `tb_departamento` e `tb_funcionario`.
Inclui filtro por faixa salarial, atualização de salário, remoção por condição e `JOIN` funcionário + departamento.

### Exercício 3 – Sistema de Produtos e Categorias
Banco `db_loja` com as tabelas `tb_categoria` e `tb_produto`.
Inclui filtro por preço, atualização de preço, remoção por condição e `JOIN` produto + categoria.

## ▶️ Como executar

1. Abra o **MySQL Workbench** (ou DBeaver).
2. Conecte-se ao seu servidor MySQL local.
3. Abra o arquivo `atividade4.sql`.
4. Execute o script por blocos, seguindo a ordem dos exercícios (cada exercício começa com seu próprio `CREATE DATABASE` e `USE`).
5. Capture screenshots dos resultados de cada consulta e salve na pasta `prints/`.

## 🛠️ Tecnologias utilizadas

- MySQL
- MySQL Workbench / DBeaver

## 👤 Luiza Valentina Paolinelli Guimarães
