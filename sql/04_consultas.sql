.headers on
.mode column

-- C1: atividades pendentes ordenadas por prazo (painel principal)
SELECT d.nome AS disciplina, a.titulo, a.prazo
FROM atividade a JOIN disciplina d ON d.id_disciplina = a.id_disciplina
WHERE a.status = 'pendente' ORDER BY a.prazo;

-- C2: quantidade de atividades por disciplina
SELECT d.nome AS disciplina, COUNT(a.id_atividade) AS total
FROM disciplina d LEFT JOIN atividade a ON a.id_disciplina = d.id_disciplina
GROUP BY d.id_disciplina ORDER BY total DESC;

-- C3: atividades por categoria e status
SELECT c.nome AS categoria, a.status, COUNT(*) AS qtd
FROM atividade a JOIN categoria c ON c.id_categoria = a.id_categoria
GROUP BY c.nome, a.status;
