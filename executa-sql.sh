#!/bin/bash

DB_HOST="localhost"
DB_PORT="8080"
DB_NAME="apartamento"
DB_USER="user_app_nord"

echo "Iniciando execução dos scripts..."

while IFS= read -r script
do
  if [[ -z "$script" || "$script" == \#* ]]; then
    continue
  fi

  echo "Executando: $script"

  psql \
    -h "$DB_HOST" \
    -p "$DB_PORT" \
    -U "$DB_USER" \
    -d "$DB_NAME" \
    -f "$script"

  if [ $? -ne 0 ]; then
    echo "❌ Erro ao executar $script"
    exit 1
  fi

done < filelist.txt

echo "✅ Todos os scripts executados com sucesso!"
