all: backend frontend

.PHONY: backend frontend

SHELL := /bin/bash

backend:
	cd backend && source .venv/bin/activate && pip install -r requirements.txt && uvicorn app.main:app --reload

frontend:
	cd frontend && pnpm i && pnpm dev