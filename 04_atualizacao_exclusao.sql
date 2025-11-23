-- Atualizações (UPDATE)

-- 1. Atualizar o cargo de um funcionário
UPDATE Funcionario 
SET cargo = 'CTO' 
WHERE id = 2;

-- 2. Corrigir o título de um post
UPDATE Post 
SET titulo = 'Otimizando consultas SQL avançadas' 
WHERE id = 1;

-- 3. Atualizar a senha de um usuário (Simulação)
UPDATE Usuario 
SET senha = 'nova_senha_segura' 
WHERE email = 'lucas@email.com';


-- Exclusões (DELETE)

-- 1. Remover uma tag específica de um post (Desassociação)
DELETE FROM Post_Tag 
WHERE post_id = 1 AND tag_id = 2;

-- 2. Apagar um comentário impróprio
DELETE FROM Comentario 
WHERE id = 3;

-- 3. Usuário removeu a curtida (Descurtir)
DELETE FROM Curtida 
WHERE usuario_id = 1 AND post_id = 2;