.PHONY: install setup dev run-gradio run-backend test lint

VENV?=.venv
PYTHON=${VENV}/bin/python
PIP=${VENV}/bin/pip

install:
	python -m venv ${VENV}
	${PIP} install --upgrade pip
	${PIP} install -r requirements-dev.txt
	${PIP} install -e .

setup: install

dev:
	${PYTHON} -m web.backend.app

run-gradio:
	${PYTHON} gradio_app.py

run-backend:
	uvicorn web.backend.app:app --reload --host 0.0.0.0 --port 8000

test:
	${VENV}/bin/pytest -q

lint:
	${VENV}/bin/ruff check .
	${VENV}/bin/black --check .
	${VENV}/bin/isort --check-only .
