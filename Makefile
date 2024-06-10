all :
	@mkdir -p /home/amine/data/mariadb
	@mkdir -p /home/amine/data/wordpres
	@docker compose -f ./srcs/docker-compose.yml up -d --build
clean :
	@docker compose -f ./srcs/docker-compose.yml down
fclean: clean
	@rm -rf /home/amine/data/mariadb
	@rm -rf /home/amine/data/wordpres
	@docker system prune -af
re : fclean all

.PHONY: clean all
