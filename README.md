# Django Blog

A Django blog application inspired by the patterns in _Django 4 by Example_ by Antonio Melé, implemented with Python 3.12.16 and Django 6.1.1. The project includes post management, tags, pagination, search, email sharing, comments, and Fly.io deployment support.

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

- Python 3.12.16
- [uv](https://docs.astral.sh/uv/)
- Project dependencies from `pyproject.toml` (locked in `uv.lock`) including Django 6.1.1, `django-taggit` 6.1.0, `Markdown` 3.10.3, and `whitenoise` 6.12.0

### Local setup

```bash
git clone https://github.com/MaxAndreev27/django-blog.git
cd django-blog
uv sync
uv run python manage.py migrate
uv run python manage.py runserver
```

Open `http://127.0.0.1:8000/` in a browser. Create an administrator account with `uv run python manage.py createsuperuser` to manage posts and comments.

Run the test suite with:

```bash
uv run python manage.py test
```

Dependencies are constrained to their current minor release series in `pyproject.toml`, while `uv.lock` records the resolved versions. To update within those constraints, run `uv lock --upgrade` and `uv sync --locked`, then run the checks and tests. Commit both files when their contents change.

## Configuration

For local development, Django uses SQLite and the console email backend by default. `manage.py` already sets `DJANGO_SETTINGS_MODULE` to `config.settings`; set it manually only when invoking Django from another entry point. Fly.io deployments use `FLY_APP_NAME` to select the persistent `/data` database location and configure the app host. Review the development `SECRET_KEY`, `DEBUG`, allowed hosts, and email settings in `config/settings.py` before using the application in production.

## Deployment

The repository includes a `Dockerfile`, `fly.toml`, and and GitHub Actions workflows for CI and Fly.io deployment. The Docker image installs locked dependencies with `uv sync --frozen --no-dev`. Configure the `FLY_API_TOKEN` repository secret before pushing to `main`; pushes to that branch trigger deployment.

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
├── pyproject.toml                  # Project metadata and dependencies
└── uv.lock                         # Locked dependency versions
```

## Contributing

Please read [CONTRIBUTING.md](.github/CONTRIBUTING.md) before opening a pull request. Bug reports and feature ideas can be submitted through the repository issue templates.

## Security

Please do not disclose security vulnerabilities in a public issue. See [SECURITY.md](.github/SECURITY.md) for the reporting process.

## License

This project is distributed under the MIT License. See [LICENSE](LICENSE) for details.
