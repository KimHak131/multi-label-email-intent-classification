# Contributing to Multi-Label Email Intent Classification

Thank you for wanting to contribute! This guide will help you get the project running locally and show the minimal steps to open a clean, helpful PR.

## Quick steps to get set up

1. Fork the repo and create a new branch.
2. Install Python 3.11+ (the project indicates >=3.13 in pyproject; 3.11/3.12 may also work—adjust if necessary).
3. Create and activate a virtual environment (recommended):

```bash
python -m venv .venv
source .venv/bin/activate
```

4. Install required packages:

```bash
pip install -r requirements-dev.txt
pip install -e .
```

## Development workflow

- Make a small, focused change per PR.
- If the change is new functionality or behavior, add a test under `tests/`.
- Run the tests locally: `pytest -q`.
- Add clear commit messages and cleanup before making the PR.

## Code style & tooling

- We use `black`, `ruff`, and `isort` for formatting and linting. Pre-commit hooks are configured.
- To run linting locally:

```bash
ruff check .
black --check .
isort --check-only .
```

## Submitting a PR

1. Make clear code changes and include tests for behavior changes.
2. Run the tests and linters.
3. Push your branch to your fork and open a PR. Provide an overview of changes.
4. Respond to feedback and iterate.

## Common tasks
- Run the demo UI: `python gradio_app.py`
- Run the backend: `python -m web.backend.app` or `uvicorn web.backend.app:app --reload`

## Asking for help

If anything is unclear, open a small discussion or issue with a short summary of what you want to change and how you tried to implement it. That helps maintainers review your PR faster.
