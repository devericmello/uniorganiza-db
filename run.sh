#!/bin/sh
# Recria o banco e executa todos os scripts
rm -f uniorganiza.db
python3 - <<'PY'
import sqlite3
con = sqlite3.connect('uniorganiza.db')
for f in ['sql/01_schema.sql','sql/02_inserts.sql','sql/03_dml.sql']:
    con.executescript(open(f, encoding='utf-8').read())
    print('OK:', f)
con.commit()
PY
