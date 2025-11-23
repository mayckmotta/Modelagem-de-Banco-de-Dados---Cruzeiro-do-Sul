-- Consultas SQL (DQL)

-- Consulta 1: Listar Título do Post, Nome do Autor e Categoria (JOIN)
SELECT 
    p.titulo AS 'Título do Post',
    f.nome AS 'Autor',
    c.nome AS 'Categoria'
FROM Post p
JOIN Funcionario f ON p.funcionario_id = f.id
JOIN Categoria c ON p.categoria_id = c.id;


-- Consulta 2: Média de notas por Post (Agregação e Group By)
SELECT 
    p.titulo,
    AVG(a.nota) AS 'Media_Avaliacao'
FROM Post p
JOIN Avaliacao a ON p.id = a.post_id
GROUP BY p.titulo
ORDER BY Media_Avaliacao DESC;


-- Consulta 3: Listar comentários de um post específico com o nome do usuário
SELECT 
    u.nome AS 'Usuário',
    c.conteudo AS 'Comentário',
    c.data_criacao
FROM Comentario c
JOIN Usuario u ON c.usuario_id = u.id
WHERE c.post_id = 1
ORDER BY c.data_criacao DESC;


-- Consulta 4: Listar todos os posts que possuem a tag 'SQL'
SELECT p.titulo 
FROM Post p
JOIN Post_Tag pt ON p.id = pt.post_id
JOIN Tag t ON pt.tag_id = t.id
WHERE t.nome = 'SQL';