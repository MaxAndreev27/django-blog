#!/bin/sh

set -e

echo "==> Running database migrations..."
python manage.py migrate --noinput

echo "==> Starting Gunicorn server..."
exec gunicorn --bind :8000 --workers 2 config.wsgi