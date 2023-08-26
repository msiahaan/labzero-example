.PHONY: up
up:
	docker compose up

.PHONY: migrate
migrate:
	poetry run myapp manage migrate

.PHONY: devdb
devdb: migrate
	poetry run python scripts/devdb.py

.PHONY: run
run:
	poetry run myapp manage runserver_plus
