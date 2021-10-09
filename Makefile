ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

start:
	docker-compose up
