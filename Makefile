NAME	= inception

SRC_DIR := srcs
COMPOSE_FILE := srcs/docker-compose.yml

# Targets
.PHONY: all build up down restart clean

all: build up
	@echo "\033[31m\033[31m\033[32m${NAME} initialized...\033[31m\033[39m\n"

build:
	@echo "\033[31m\033[31m\033[32mBuilding ${NAME}...\033[31m\033[39m\n"
	@docker compose -f $(COMPOSE_FILE) build
	@echo "\033[31m\033[31m\033[32m${NAME} build successful!\033[31m\033[39m\n"

up:
	@echo "\033[31m\033[31m\033[32mBumping ${NAME} up..\033[31m\033[39m\n"
	@docker compose -f $(COMPOSE_FILE) up
	@echo "\033[31m\033[31m\033[32m${NAME} bumpped up\033[31m\033[39m\n"

down:
	@echo "\033[31m\033[31m\033[32mStopping ${NAME}..\033[31m\033[39m\n"
	@docker compose -f $(COMPOSE_FILE) down
	@echo "\033[31m\033[31m\033[32m${NAME} Stopped\033[31m\033[39m\n"

prune:
	@echo "\033[31m\033[31m\033[32m${NAME} prune\033[31m\033[39m\n"
	@docker system prune -af --volumes
	@echo "\033[31m\033[31m\033[32m${NAME} prune successful!\033[31m\033[39m\n"

restart: down up
	@echo "\033[31m\033[31m\033[32m${NAME} restarted\033[31m\033[39m\n"

clean: down
	@echo "\033[31m\033[31m\033[32mBasic cleaning ${NAME}...\033[31m\033[39m\n"
	@sudo rm -rf ${SRC_DIR}/web
	@sudo rm -rf ${SRC_DIR}/database
	@echo "\033[31m\033[31m\033[32mBasic cleanup done!\033[31m\033[39m\n"

fclean: prune
	@echo "\033[31m\033[31m\033[32mDeep cleaning ${NAME}...\033[31m\033[39m\n"
	@sudo rm -rf ${SRC_DIR}/web
	@sudo rm -rf ${SRC_DIR}/database
	@echo "\033[31m\033[31m\033[32mDeep cleanup done!\033[31m\033[39m\n"
