-- UniOrganiza - Esquema do banco de dados (SQLite 3)
PRAGMA foreign_keys = ON;

CREATE TABLE usuario (
    id_usuario   INTEGER PRIMARY KEY AUTOINCREMENT,
    nome         TEXT NOT NULL CHECK (length(trim(nome)) > 0),
    email        TEXT NOT NULL UNIQUE CHECK (email LIKE '%_@_%._%'),
    criado_em    TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE TABLE disciplina (
    id_disciplina INTEGER PRIMARY KEY AUTOINCREMENT,
    id_usuario    INTEGER NOT NULL,
    nome          TEXT NOT NULL CHECK (length(trim(nome)) > 0),
    professor     TEXT,
    semestre      TEXT NOT NULL CHECK (semestre GLOB '[0-9][0-9][0-9][0-9].[12]'),
    UNIQUE (id_usuario, nome, semestre),
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE CASCADE
);

CREATE TABLE categoria (
    id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    nome         TEXT NOT NULL UNIQUE
);

CREATE TABLE atividade (
    id_atividade  INTEGER PRIMARY KEY AUTOINCREMENT,
    id_disciplina INTEGER NOT NULL,
    id_categoria  INTEGER NOT NULL,
    titulo        TEXT NOT NULL CHECK (length(trim(titulo)) > 0),
    descricao     TEXT,
    prazo         TEXT NOT NULL CHECK (prazo GLOB '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'),
    status        TEXT NOT NULL DEFAULT 'pendente' CHECK (status IN ('pendente','concluida')),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina (id_disciplina) ON DELETE CASCADE,
    FOREIGN KEY (id_categoria)  REFERENCES categoria (id_categoria)  ON DELETE RESTRICT
);

CREATE INDEX idx_atividade_prazo ON atividade (prazo);
CREATE INDEX idx_disciplina_usuario ON disciplina (id_usuario);
