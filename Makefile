NAME	= inception

SRC_DIR := srcs
COMPOSE_FILE := srcs/docker-compose.yml

# Targets
.PHONY: all build up down restart clean

# all:
# 	@printf "Launch configuration ${name}...\n"
# 	@bash srcs/requirements/wordpress/tools/make_dir.sh
# 	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d

# build:
# 	@printf "Building configuration ${name}...\n"
# 	@bash srcs/requirements/wordpress/tools/make_dir.sh
# 	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build

# down:
# 	@printf "Stopping configuration ${name}...\n"
# 	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env down

# re:
# 	@printf "Rebuild configuration ${name}...\n"
# 	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build

all: build up

build:
	docker-compose -f $(COMPOSE_FILE) build

up:
	docker-compose -f $(COMPOSE_FILE) up -d

down:
	docker-compose -f $(COMPOSE_FILE) down

prune:
	docker-compose -f $(COMPOSE_FILE) down

restart: down up

# clean:
# 	docker-compose -f $(COMPOSE_FILE) down --rmi all --volumes


# 	@echo "\033[31m	   ༺ (\033[31m\033[32mIRC Compiled!\033[31m)༻\033[39m\n"

# clean :
# 	@echo "\033[33m     Clean  ALL ..."
# 	@rm -f ${OBJ}
	
# fclean : clean
# 	@rm -f	${NAME}
# 	@echo "\033[36mEverything is cleaned! \033[32m✓\033[39m\n"

# clean: down
# 	@printf "Cleaning configuration ${name}...\n"
# 	@docker system prune -a
# 	@sudo rm -rf ~/data/wordpress/*
# 	@sudo rm -rf ~/data/mariadb/*

# fclean:
# 	@printf "Total clean of all configurations docker\n"
# 	@docker stop $$(docker ps -qa)
# 	@docker system prune --all --force --volumes
# 	@docker network prune --force
# 	@docker volume prune --force
# 	@sudo rm -rf ~/data/wordpress/*
# 	@sudo rm -rf ~/data/mariadb/*

# .PHONY	: all build down re clean fclean