#!/bin/sh

# Espera o Postgres responder na porta 5432
echo "Aguardando o Postgres em $DB_HOST:$DB_PORT..."
while ! nc -z $DB_HOST $DB_PORT; do
  sleep 1
done

echo "Postgres está pronto - iniciando app"
exec "$@"