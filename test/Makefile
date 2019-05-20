include ../utils/Makefile.help
include ../utils/Makefile.functions

NAME := anriredmine

.PHONY: test
test: setup ##@targets Starts test containers.
	docker-compose -p $(NAME) -f test.yaml up

.PHONY: stop
stop: ##@targets Stops test containers.
	docker-compose -p $(NAME) -f test.yaml stop

.PHONY: rm
rm: stop ##@targets Stops test containers.
	docker-compose -p $(NAME) -f test.yaml rm -f

.PHONY: clean
clean: stop rm ##@targets Removes docker containers and created files.
	sudo rm -rf root

.PHONY: clean-redmine
clean-redmine: rm ##@targets Removes docker containers and created files.
	sudo rm -rf root/html root/bundle

.PHONY: clean-db
clean-db: rm ##@targets Removes docker containers and created files.
	sudo rm -rf root/db

.PHONY: setup
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
	sudo chmod u=rwX-s,g=rwX,o=rwX -R "root/db"; \
	fi
	if [ -d "root/db/postgresql/data" ]; then \
	sudo chown 1001.0 -R "root/db/postgresql"; \
	sudo chmod u=rwX-s,g=,o= -R "root/db/postgresql/data"; \
	fi
