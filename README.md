# UniOrganiza – Banco de Dados

Modelo de dados e scripts SQL (SQLite 3) do UniOrganiza, sistema web para gestão de prazos acadêmicos.

## Estrutura
- `sql/01_schema.sql` – criação das tabelas, chaves e restrições
- `sql/02_inserts.sql` – dados de exemplo
- `sql/03_dml.sql` – UPDATE e DELETE
- `sql/04_consultas.sql` – consultas SELECT
- `docs/diagrama_er.png` – diagrama entidade-relacionamento
- `run.sh` – recria o banco `uniorganiza.db`

## Como executar
```
./run.sh
sqlite3 uniorganiza.db < sql/04_consultas.sql
```
