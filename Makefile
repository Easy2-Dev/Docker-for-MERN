up-f:
	docker compose up --build --remove-orphans

up:
	[ -d ./volumes ] || mkdir -p volumes/mysql \
	&& docker compose up -d --build --remove-orphans 

down:
	docker compose down --remove-orphans

shell-client:
	docker exec -it client sh

shell-api:
	docker exec -it api sh