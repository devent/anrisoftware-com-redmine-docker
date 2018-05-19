include ../utils/Makefile.help
include ../utils/Makefile.functions

NAME := anri-redmine

test: setup ##@targets Starts test containers.
	docker-compose -p $(NAME) -f test.yaml up
.PHONY: up

stop: ##@targets Stops test containers.
	docker-compose -p $(NAME) -f test.yaml stop

rm: stop ##@targets Stops test containers.
	docker-compose -p $(NAME) -f test.yaml rm -f

clean: stop rm ##@targets Removes docker containers and created files.
	sudo rm -rf root

clean-redmine: rm ##@targets Removes docker containers and created files.
	sudo rm -rf root/html root/bundle

clean-db: rm ##@targets Removes docker containers and created files.
	sudo rm -rf root/db

setup:
	for p in html db; do \
	mkdir -p root/$$p; \
	sudo chmod o+rwX root/$$p ; \
	done
	if [ -d "root/html" ]; then \
	sudo chown 999.999 -R "root/html"; \
	sudo chmod u=rwX-s,g=-s,o-s -R "root/html"; \
	fi
	if [ -d "root/db" ]; then \
	sudo chown 0.0 -R "root/db"; \
	sudo chmod u=rwX-s,g=rX,o=rX -R "root/db"; \
	if [ -d "root/db/postgresql/data" ]; then \
	sudo chown 1001.0 -R "root/db/postgresql/data"; \
	sudo chmod u=rwX,g=,o= -R "root/db/postgresql/data"; \
	fi \
	fi
.PHONY: setup
