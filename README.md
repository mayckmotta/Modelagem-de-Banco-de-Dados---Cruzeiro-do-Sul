# Modelagem-de-Banco-de-Dados---Cruzeiro-do-Sul
Repositório para abrigo da atividade da disciplina Modelagem de Banco de Dados no CST em Análise e Desenvolvimento de Sistemas
# Projeto de Banco de Dados - Mck Tools Blog

Este repositório contém os scripts SQL desenvolvidos para a disciplina de Modelagem de Banco de Dados (Experiência Prática IV). O projeto simula o banco de dados de um blog corporativo de tecnologia.

## Estrutura do Projeto

O projeto lógico foi normalizado até a 3FN e implementado em SQL.

* **Tabelas Principais:** Usuario, Funcionario, Post, Categoria, Tag.
* **Tabelas Associativas:** Comentario, Curtida, Avaliacao, Post_Tag.

## Como Executar

Os scripts estão numerados e devem ser executados na seguinte ordem para garantir a integridade referencial:

1.  `01_criacao_tabelas.sql`: Cria toda a estrutura (DDL).
2.  `02_insercao_dados.sql`: Insere dados iniciais para teste (DML).
3.  `03_consultas.sql`: Exemplos de relatórios e seleções de dados.
4.  `04_atualizacao_exclusao.sql`: Exemplos de operações de manutenção.

## Tecnologias

* SQL (Padrão MySQL/MariaDB)

## Autor
Mayck Motta
