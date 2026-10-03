PRAGMA foreign_keys = ON;

-- UPDATE: marcar atividade como concluída
UPDATE atividade SET status = 'concluida' WHERE titulo = 'Lista Encadeada';

-- UPDATE: adiar prazo
UPDATE atividade SET prazo = '2026-10-30' WHERE titulo = 'Relatório de Laboratório';

-- DELETE: remover uma atividade
DELETE FROM atividade WHERE titulo = 'Prova de Limites';

-- DELETE em cascata: remover usuário apaga suas disciplinas e atividades
DELETE FROM usuario WHERE email = 'ana@exemplo.com';
