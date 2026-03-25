include .env
export

S ?= 6

info:
	docker stats

deploy:
	docker compose down && docker compose up -d --build

scale:
	docker compose scale server=$(S)

test:
	./test.sh

# 1000 requests at 2000 concurrent connections over 10 seconds
test-heavy:
	hey \
		-z 10s \
		-q 1000 \
		-c 2000 \
		-m GET \
		http://localhost:$(NGINX_PORT)/api/users
