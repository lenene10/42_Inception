all:
	@mkdir -p /home/rluari/data/mariadb_volume
	@mkdir -p /home/rluari/data/wordpress_volume
	@docker-compose -f ./srcs/docker-compose.yml up -d

down:
	@docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker rmi -f $$(docker images -qa);\
	docker volume rm $$(docker volume ls -q);\
	rm -rf /home/rluari/data/

re:
	@make clean && make all

.PHONY: all down clean re