#!/bin/bash -e

if [[ "$SPBM_DB_ENGINE" == "django.db.backends.postgresql" ]]; then
  ./container/wait-for-it.sh psql:5432 -t 20
fi

if [[ ! "$SPBM_DEBUG" ]]; then
  echo "Migrating database due to SPBM_DEBUG being false"
  python manage.py showmigrations --plan
  python manage.py migrate
fi

# Normally execute WSGI server for hosting/running the server
exec "$@"
