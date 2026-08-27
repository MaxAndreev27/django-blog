# Django Blog

A Django blog application built while working through the first three chapters of _Django 4 by Example_ by Antonio Melé. It includes post management, tags, pagination, search, email sharing, and comments.

## Features

- Post listing, detail pages, pagination, and latest-posts navigation
- Tagging with `django-taggit`
- Markdown content and full-text search
- Share-by-email form
- Comment submission and moderation through the Django admin
- Static files served with WhiteNoise
- Production deployment configuration for Fly.io

## Getting Started

### Requirements

- Python 3.13+
- pip

### Local setup

```bash
git clone https://github.com/MaxAndreev27/django-blog.git
cd django-blog
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

Open `http://127.0.0.1:8000/` in a browser. Create an administrator account with `python manage.py createsuperuser` to manage posts and comments.

Run the test suite with:

```bash
python manage.py test
```

## Configuration

For local development, Django uses SQLite and the console email backend by default. `manage.py` already sets `DJANGO_SETTINGS_MODULE` to `config.settings`; set it manually only when invoking Django from another entry point. Fly.io deployments use `FLY_APP_NAME` to select the persistent `/data` database location and configure the app host. Review the development `SECRET_KEY`, `DEBUG`, allowed hosts, and email settings in `config/settings.py` before using the application in production.

## Deployment

The repository includes a `Dockerfile`, `fly.toml`, and a GitHub Actions workflow for Fly.io. Configure the `FLY_API_TOKEN` repository secret before pushing to `main`; pushes to that branch trigger deployment.

## Repository Structure

```text
.
├── manage.py
├── config/                         # Project settings, URLs, ASGI, and WSGI
├── blog/                           # Blog application and migrations
├── templates/                      # Shared and blog page templates
├── static/                         # Application stylesheets and assets
├── Dockerfile
├── fly.toml
└── requirements.txt
```

## Contributing

Please read [CONTRIBUTING.md](.github/CONTRIBUTING.md) before opening a pull request. Bug reports and feature ideas can be submitted through the repository issue templates.

## Security

Please do not disclose security vulnerabilities in a public issue. See [SECURITY.md](.github/SECURITY.md) for the reporting process.

## License

This project is distributed under the MIT License. See [LICENSE](LICENSE) for details.
