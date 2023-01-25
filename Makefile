all: up

# check if itaureli.42.fr is in /etc/hosts, if not add it
# then create all volume folders
# then compose up
up: 	
	sudo chmod 777 /etc/hosts && sudo cat /etc/hosts | sudo grep itaureli.42.fr || \
	sudo echo "127.0.0.1 itaureli.42.fr" >> /etc/hosts

	sudo mkdir -p /home/itaureli/data/wordpress && sudo chmod 777 /home/itaureli/data/wordpress
	sudo mkdir -p /home/itaureli/data/mariadb && sudo chmod 777 /home/itaureli/data/mariadb

	docker-compose -f srcs/docker-compose.yml up -d

down: 
	docker-compose -f srcs/docker-compose.yml down

# down, remove all volume folders and remove itaureli.42.fr from /etc/hosts
clean: down
	docker stop $$(docker ps -qa); \
	docker rm $$(docker ps -qa); \
	docker rmi -f $$(docker images -qa); \
	docker volume rm $$(docker volume ls -q); \
	docker network rm $$(docker network ls -q); \
	sudo rm -rf /home/itaureli/data
	sudo sed -i '/127.0.0.1 itaureli.42.fr/d' /etc/hosts

fclean: clean
	sudo docker system prune --volumes --all --force
	