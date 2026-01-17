#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🐳 Inicializando carga SQL..."
echo "📂 Diretório do script: $SCRIPT_DIR"

echo "📌 Criando banco apartamento (se não existir)..."

psql -U "$POSTGRES_USER" -d postgres <<-EOSQL
  SELECT 'CREATE DATABASE apartamento'
  WHERE NOT EXISTS (
    SELECT FROM pg_database WHERE datname = 'apartamento'
  )\gexec
EOSQL

echo "✅ Banco apartamento garantido"
echo "📄 Executando scripts do filelist..."

while IFS= read -r file || [[ -n "$file" ]]; do
  [[ -z "$file" || "$file" =~ ^# ]] && continue

  echo "➡️ Executando: $file"

  psql \
    -U "$POSTGRES_USER" \
    -d apartamento \
    -f "$SCRIPT_DIR/$file"

done < "$SCRIPT_DIR/filelist.txt"

echo "🎉 Carga SQL finalizada com sucesso"
