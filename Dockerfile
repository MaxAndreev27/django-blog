ARG PYTHON_VERSION=3.13-slim

FROM python:${PYTHON_VERSION}

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir -p /code

WORKDIR /code

COPY requirements.txt /tmp/requirements.txt
RUN set -ex && \
    pip install --upgrade pip && \
    pip install -r /tmp/requirements.txt && \
    rm -rf /root/.cache/

COPY . /code

# 1. Створюємо папку для SQLite всередині образу
RUN mkdir -p /data && chmod 777 /data

ENV SECRET_KEY "9FCQbwkpihFN1BTeUIIUFhor2QdSlDo7iQRSLxjmD1hZcInOy1"
RUN python manage.py collectstatic --noinput

EXPOSE 8000

# 2. Робимо entrypoint.sh виконуваним всередині контейнера
RUN chmod +x /code/entrypoint.sh

# 3. Запускаємо через точку входу (скрипт виконає міграції і сам запустить gunicorn)
ENTRYPOINT ["/code/entrypoint.sh"]