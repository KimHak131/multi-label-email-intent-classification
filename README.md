# Multi-Label Email Intent Classification

This repository contains a multi-label email intent classification project including a Gradio demo app and a FastAPI backend for serving a fine-tuned DistilBERT model using LoRA adapters.

This project is meant to be easy to run locally and to contribute to. See below for how to get started as a contributor.

## Quickstart

- Install dependencies (see `requirements-dev.txt` for dev tools)
- Start the Gradio demo locally: `python gradio_app.py`
- Start the API server locally: `python -m web.backend.app`

See `CONTRIBUTING.md` for full developer setup and contribution workflow.

## Structure

- `gradio_app.py` - Demo app that runs a Gradio interface
- `web/backend/` - FastAPI backend, routes, and model service abstraction
- `notebooks/` - Jupyter notebooks used for training, benchmarking, and data prep
- `model/final_model` - Local copy of the fine-tuned model files (optional)

## Helpful commands

- `make install` - Create venv and install runtime and dev dependencies
- `make dev` - Run the app in development mode
- `make test` - Run the unit test suite
