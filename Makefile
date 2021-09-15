first-init: first init
init: clean docker-pull docker-build up

first:
	docker-compose run --rm node-cli yarn create next-app --typescript application && mv ./frontend/application . && rm -rf ./frontend

clean:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build --pull

up:
	docker-compose up -d

down:
	docker-compose down --remove-orphans