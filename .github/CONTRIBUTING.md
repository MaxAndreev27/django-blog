# Contributing

Thank you for taking the time to improve this project.

## Before you start

For bugs and feature ideas, search existing issues first. Open a new issue when none matches your case and use the appropriate template.

## Development

1. Fork the repository and create a focused branch from `main`.
2. Install [uv](https://docs.astral.sh/uv/) and run `uv sync`. Use `uv add <package>` to change dependencies and commit `pyproject.toml` and `uv.lock`.
3. Make the smallest change that addresses the issue.
4. Run `uv run python manage.py test` and verify the affected page or command locally.
5. Update documentation when behavior or setup changes.
6. Open a pull request using the pull request template.

Keep commits focused, avoid unrelated formatting changes, and never include secrets or local database credentials.

## Pull requests

Describe the problem, the solution, and how it was tested. Pull requests should be reviewable, pass the test suite, and preserve existing behavior unless a change is intentional and documented.
