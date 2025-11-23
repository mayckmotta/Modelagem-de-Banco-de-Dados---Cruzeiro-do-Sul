-- Inserção de Dados (Povoamento)

-- 1. Inserir Funcionários (Autores)
INSERT INTO Funcionario (nome, cargo, departamento) VALUES 
('Ana Silva', 'Editora Chefe', 'Conteúdo'),
('Carlos Souza', 'Desenvolvedor Backend', 'TI'),
('Beatriz Lima', 'Analista de Dados', 'Data Science');

-- 2. Inserir Usuários (Leitores)
INSERT INTO Usuario (nome, email, senha) VALUES 
('Lucas Pereira', 'lucas@email.com', 'senha123'),
('Fernanda Costa', 'fernanda@email.com', 'senha456'),
('João Doria', 'joao@email.com', 'senha789');

-- 3. Inserir Categorias
INSERT INTO Categoria (nome) VALUES 
('Tecnologia'),
('Carreira'),
('Design');

-- 4. Inserir Tags
INSERT INTO Tag (nome) VALUES 
('SQL'),
('Banco de Dados'),
('Produtividade'),
('Web');

-- 5. Inserir Posts (Relacionando com Funcionário e Categoria)
INSERT INTO Post (titulo, corpo, funcionario_id, categoria_id, data_criacao) VALUES 
('Otimizando consultas SQL', 'Texto sobre como melhorar a performance...', 2, 1, NOW()),
('Dicas para entrevista Tech', 'Texto com dicas de carreira...', 1, 2, NOW()),
('Modelagem de Dados 101', 'Conceitos básicos de DER...', 3, 1, NOW());

-- 6. Inserir Interações (Comentários, Curtidas, Avaliações, Tags em Posts)
INSERT INTO Comentario (conteudo, usuario_id, post_id) VALUES 
('Ótimo artigo!', 1, 1),
('Muito útil, obrigado.', 2, 1),
('Poderia falar mais sobre índices?', 3, 1);

INSERT INTO Curtida (usuario_id, post_id) VALUES 
(1, 1), (2, 1), (1, 2), (3, 2);

INSERT INTO Avaliacao (usuario_id, post_id, nota) VALUES 
(1, 1, 5), (2, 1, 4), (1, 2, 5);

INSERT INTO Post_Tag (post_id, tag_id) VALUES 
(1, 1), (1, 2), (2, 3);