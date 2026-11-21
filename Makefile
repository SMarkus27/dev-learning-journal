COMPOSE := docker compose

.PHONY: build up down logs shell check migrate

build:
	$(COMPOSE) build

up:
	$(COMPOSE) up

down:
	$(COMPOSE) down

logs:
	$(COMPOSE) logs -f web

shell:
	$(COMPOSE) run --rm web /bin/sh

check:
	$(COMPOSE) run --rm web python manage.py check

migrate:
	$(COMPOSE) run --rm web python manage.py migrate
