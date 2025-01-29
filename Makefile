.PHONY: up exec down

up:
	docker compose -f ./docker/compose.yaml up -d

exec:
	docker compose -f ./docker/compose.yaml exec web bash

down:
	docker compose -f ./docker/compose.yaml down

remove:
	docker compose -f ./docker/compose.yaml down --rmi all --volumes

server:
	rails server -b 0.0.0.0
