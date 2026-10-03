PRAGMA foreign_keys = ON;

INSERT INTO usuario (nome, email) VALUES
 ('Eric Mello Fernandes', 'eric@exemplo.com'),
 ('Ana Souza', 'ana@exemplo.com');

INSERT INTO categoria (nome) VALUES ('Trabalho'), ('Prova'), ('Relatório'), ('Projeto');

INSERT INTO disciplina (id_usuario, nome, professor, semestre) VALUES
 (1, 'Estrutura de Dados',      'Prof. Lima',   '2026.2'),
 (1, 'Redes de Computadores',   'Prof. Alves',  '2026.2'),
 (1, 'Banco de Dados II',       'Prof. Costa',  '2026.2'),
 (2, 'Cálculo I',               'Prof. Rocha',  '2026.2');

INSERT INTO atividade (id_disciplina, id_categoria, titulo, descricao, prazo, status) VALUES
 (1, 1, 'Lista Encadeada',        'Implementar lista encadeada em C', '2026-10-27', 'pendente'),
 (2, 3, 'Relatório de Laboratório','Laboratório de roteamento',       '2026-10-28', 'pendente'),
 (3, 4, 'Projeto de Modelagem',   'Modelo ER do sistema',             '2026-11-01', 'pendente'),
 (3, 2, 'Prova 1',                NULL,                               '2026-10-15', 'concluida'),
 (4, 2, 'Prova de Limites',       NULL,                               '2026-10-20', 'pendente');
